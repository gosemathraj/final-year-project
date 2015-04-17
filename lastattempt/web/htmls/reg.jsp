<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String user=request.getParameter("user"); 
session.putValue("user",user); 
String pwd=request.getParameter("pass");
String email=request.getParameter("email"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamification","root","gosemathraj"); 
Statement st= con.createStatement(); 
ResultSet rs; 
try{
int i=st.executeUpdate("insert into user values ('"+user+"','"+pwd+"','"+email+"')"); 
if(i==1){
    out.println("Thankyou for registeration");
}
}catch(Exception e) {
    out.println(e);
}
%>