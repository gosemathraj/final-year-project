/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.*;  
import java.io.BufferedWriter;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rajesh
 */
public class CompileRun extends HttpServlet {
    private int index = 0;
    private int iterator = 0;
    private String classname;
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       HttpSession session = request.getSession(true);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try{

                String runresult = new String();
                String text = request.getParameter("txtarea");
                String temp = new String();
                temp = "";
                ArrayList<String> txt = new ArrayList<String>(); 
                while(iterator<text.length()-1){
                    if(text.charAt(iterator) == ' '){
                        iterator++;
                    }else{
                        temp = temp + text.charAt(iterator);
                        if(text.charAt(iterator+1) == ' '){
                            //System.out.println(temp);
                            txt.add(temp);
                            temp = "";
                        }else{
                            if(iterator+1 == text.length()-1){
                                temp = temp + text.charAt(iterator+1);
                                //System.out.println(temp);
                                txt.add(temp);
                                temp = "";
                            }
                        }
                        iterator++;
                    }
                }
                
                if(txt.contains("class")){
                    index = txt.indexOf("class");
                    classname = txt.get(index+1);
                    if(classname.contains("{")){
                        index = classname.indexOf("{");
                        classname = classname.substring(0,index);
                    }
                    System.out.println("classname is "+classname+" "+classname.length());
                }
                
                File f = new File("/opt/"+classname+".java");
                if(!f.exists()){
                    f.createNewFile();
                }
                /*parameter1 = request.getParameter("parameter1");
                parameter2 = request.getParameter("parameter2");*/
                
                //out.println("parameter1 is "+parameter1);
                //out.println("parameter2 is "+parameter2);
                writefile(text,classname);
                
                /*request.setAttribute("lol",text);
                request.getRequestDispatcher("/htmls/Compilecode.jsp").forward(request,response);*/
                
                
                String compileresult = compile(classname+".java");
                int result = 0;
                if(compileresult.length() >= 1){
                    
                response.setContentType("text/plain");
                response.getWriter().write(compileresult);
                    //out.println("Compilation failed: " + compileresult);
                } else {
                    //System.out.println("javac returned " + result +"  compileresult length is "+compileresult.length());
                     runresult = run(classname);
                     
                response.setContentType("text/plain");
                response.getWriter().write(runresult);
                    //out.println("Output: " + runresult);
                }
                
                /*if(compileresult.length()>=1){
                    request.setAttribute("get",compileresult);
                    request.getRequestDispatcher("/htmls/Compilecode.jsp").forward(request,response);
                }else{
                    request.setAttribute("get",runresult);
                    request.getRequestDispatcher("/htmls/Compilecode.jsp").forward(request,response);
                }*/
            }catch(Exception e) {
                e.printStackTrace();
            }
        }
    }

    public String run(String clazz) throws IOException, InterruptedException {        
        ProcessBuilder pb = new ProcessBuilder("/usr/lib/jvm/java-7-openjdk-amd64/bin/java", clazz,"10");
        pb.redirectError();
        pb.directory(new File("/opt/"));
        Process p = pb.start();
        InputStreamConsumer consumer = new InputStreamConsumer(p.getInputStream());
        consumer.start();

        BufferedReader br = new BufferedReader(new InputStreamReader(p.getErrorStream()));
        String line;
        String compileerror = new String();
        while((line = br.readLine()) != null) {
            //System.out.println("Read error stream: \"" + line + "\"");
            
            //compileerror = compileerror + line;
        }
        
        int result = p.waitFor();

        consumer.join();

        //System.out.println(consumer.getOutput());

        if(compileerror.length() > 0) {
            return compileerror;
        } else {
            return consumer.getOutput().toString();
        }
    }

    public String compile(String file) throws IOException, InterruptedException {        
        ProcessBuilder pb = new ProcessBuilder("/usr/lib/jvm/java-7-openjdk-amd64/bin/javac", file);
        pb.redirectError();
        pb.directory(new File("/opt/"));
        Process p = pb.start();
        InputStreamConsumer consumer = new InputStreamConsumer(p.getInputStream());
        consumer.start();
        
        /*InputStream error = p.getErrorStream();
        for (int i = 0; i < error.available(); i++) {
            System.out.println("" + error.read());
         }*/
        
        BufferedReader br = new BufferedReader(new InputStreamReader(p.getErrorStream()));
        String line;
        String compileerror = new String();
        while((line = br.readLine()) != null) {
        //System.out.println("Read error stream: \"" + line + "\"");
        compileerror = compileerror + line;
        }

        int result = p.waitFor();

        consumer.join();

        //System.out.println(consumer.getOutput());

        return compileerror;        
    }

    public class InputStreamConsumer extends Thread {

        private InputStream is;
        private IOException exp;
        private StringBuilder output;

        public InputStreamConsumer(InputStream is) {
            this.is = is;
        }

        @Override
        public void run() {
            int in = -1;
            output = new StringBuilder(64);
            try {
                while ((in = is.read()) != -1) {
                    output.append((char) in);
                }
            } catch (IOException ex) {
                ex.printStackTrace();
                exp = ex;
            }
        }

        public StringBuilder getOutput() {
            return output;
        }

        public IOException getException() {
            return exp;
        }
    }

    public void writefile(String text1,String classname) throws IOException, InterruptedException{
        try{
        
        File file = new File("/opt/"+classname+".java");
        if(!file.exists()){
            file.createNewFile();
        }
        
        FileWriter fw = new FileWriter(file.getAbsoluteFile());
        BufferedWriter bw = new BufferedWriter(fw);
        bw.write(text1);
        bw.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        
    }// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
