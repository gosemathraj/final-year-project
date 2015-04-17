/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import vo.Getapti;

/**
 *
 * @author rajesh
 */
@WebServlet(name = "PopApti", urlPatterns = {"/popapti"})
public class PopApti extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = res.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String aptiSeq_new = req.getParameter("aptino1");
            System.out.println("id is "+aptiSeq_new);
            String username = (String)req.getSession().getAttribute("username");
            Class.forName("com.mysql.jdbc.Driver"); 
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamification","root","gosemathraj"); 
            Statement st5= con.createStatement();
            Statement st6= con.createStatement();
            
            //List<Getapti> popup_aptitudes = new ArrayList<Getapti>();
            
            //ResultSet rs=st.executeQuery("select * from aptitude where postedby <> '" + username + "'");
            Getapti popup_aptitude = new Getapti();
            ResultSet rs5 = st5.executeQuery("select * from aptitude where aptiSeq = '"+aptiSeq_new+"'");
            
           if(rs5.next()) { 
                    
                    popup_aptitude.setDesc(rs5.getString(3));
                    popup_aptitude.setOpt1(rs5.getString(4));
                    popup_aptitude.setOpt2(rs5.getString(5));
                    popup_aptitude.setOpt3(rs5.getString(6));
                    popup_aptitude.setOpt4(rs5.getString(7));
                    popup_aptitude.setPostedBy(rs5.getString(2));
                    popup_aptitude.setImageUrl(rs5.getString(10));
                    popup_aptitude.setAptiSeq(rs5.getString(1));
                    popup_aptitude.setTitle(rs5.getString(12));
                    popup_aptitude.setDifficulty(rs5.getString(13));
                    popup_aptitude.setPoints(rs5.getString(9));
                    ResultSet rs6 = st6.executeQuery("select * from users where username = '"+popup_aptitude.getPostedBy()+"'");
                    if(rs6.next()){
                        popup_aptitude.setPostman(rs6.getString(6));
                    }
                    //out.println("success");
                    //req.getSession().setAttribute("popup_aptitude", popup_aptitude);
            }else{
               //out.println("failure");
           }
            

            
            req.setAttribute("popup_aptitude", popup_aptitude);
            RequestDispatcher dispatcher = req.getRequestDispatcher("htmls/apptitude.jsp");    
            dispatcher.forward(req, res);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GetAllAptitudes.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(GetAllAptitudes.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

        public List<Integer> getUserAptitudes(String username) {
        List<Integer> solveApti = new ArrayList<Integer>();
        try{
            Class.forName("com.mysql.jdbc.Driver"); 
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamification","root","gosemathraj"); 
            Statement st= con.createStatement();
            ResultSet rs=st.executeQuery("select distinct aptiseq from useraptitude where username = '" + username +"'");
            while(rs.next()) {
                solveApti.add(Integer.parseInt(rs.getString(1)));
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return solveApti;
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
