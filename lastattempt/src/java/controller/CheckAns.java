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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.AptitudeVO;
import vo.UserInfo;

/**
 *
 * @author rajesh
 */
public class CheckAns extends HttpServlet {

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
            
            Integer aptiSeq = Integer.parseInt(request.getParameter("aptiSeq"));
            Integer ans = Integer.parseInt(request.getParameter("ans"));
            
            Class.forName("com.mysql.jdbc.Driver"); 
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamification","root","gosemathraj"); 
            Statement st= con.createStatement();
            
            List<AptitudeVO> aptitudes = new ArrayList<AptitudeVO>(); 
            ResultSet rs1=st.executeQuery("select * from useraptitude where aptiseq="+aptiSeq + " and username = '" + username +"'");
            int alreadySolved = 0;
            while(rs1.next()) {
                alreadySolved = 1;
            }
            ResultSet rs=st.executeQuery("select * from aptitude where aptiseq="+aptiSeq);
            while(rs.next()) {
                updateUserActivity(username, aptiSeq);
                Integer answer = Integer.parseInt(rs.getString(11));
                if(answer == ans) {
                    out.println("success");
                    if(alreadySolved == 0) {
                        updateUserPoints(username, Integer.parseInt(rs.getString(9)), st);
                    }
                } else {
                    out.println("failure");
                }
                //updateUserActivity(username, Integer.parseInt(rs.getString(1)));
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CheckAns.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CheckAns.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateUserPoints(String userId, Integer points, Statement st) {
        try {
            st.executeUpdate("update users set points = points + " + points + " where username = '" + userId + "'");
        } catch (SQLException ex) {
            Logger.getLogger(CheckAns.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateUserActivity(String userId, Integer aptiSeq) {
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamification","root","gosemathraj"); 
            Statement st= con.createStatement();
            st.executeUpdate("insert into useraptitude values(0,'" + userId + "'," + aptiSeq + ")");
        } 
        catch (SQLException ex) {
            Logger.getLogger(CheckAns.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CheckAns.class.getName()).log(Level.SEVERE, null, ex);
        }
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
