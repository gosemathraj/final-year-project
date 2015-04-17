/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.AptitudeVO;

/**
 *
 * @author rajesh
 */
public class GetAllAptitudes extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String username = (String)request.getSession().getAttribute("username");
            String aptino1 = request.getParameter("aptino1");
            Class.forName("com.mysql.jdbc.Driver"); 
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamification","root","gosemathraj"); 
            Statement st= con.createStatement();
            Statement st1= con.createStatement();
            String user_image=" ";
            
            List<AptitudeVO> aptitudes = new ArrayList<AptitudeVO>(); 
            List<Integer> solvedApti = getUserAptitudes(username);
            for(Integer aptiSeq : solvedApti) {
                System.out.println(aptiSeq);
            }
            
            //ResultSet rs=st.executeQuery("select * from aptitude where postedby <> '" + username + "'");
            
            ResultSet rs = st.executeQuery("select * from aptitude");
            
           while(rs.next()) { 
                if(!solvedApti.contains(Integer.parseInt(rs.getString(1)))) {
                    AptitudeVO aptitude = new AptitudeVO();
                    aptitude.setDesc(rs.getString(3));
                    aptitude.setOpt1(rs.getString(4));
                    aptitude.setOpt2(rs.getString(5));
                    aptitude.setOpt3(rs.getString(6));
                    aptitude.setOpt4(rs.getString(7));
                    aptitude.setPostedBy(rs.getString(2));
                    aptitude.setImageUrl(rs.getString(10));
                    aptitude.setAptiSeq(rs.getString(1));
                    aptitude.setTitle(rs.getString(12));
                    aptitude.setDifficulty(rs.getString(13));
                    aptitude.setPoints(rs.getString(9));
                    ResultSet rs1 = st1.executeQuery("select * from users where username = '"+aptitude.getPostedBy()+"'");
                    if(rs1.next()){
                        aptitude.setPostman(rs1.getString(6));
                    }
                    aptitudes.add(aptitude);
                }
            }
            request.setAttribute("aptitudes", aptitudes);
            RequestDispatcher dispatcher = request.getRequestDispatcher("htmls/apptitude.jsp");    
            dispatcher.forward(request, response);
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
