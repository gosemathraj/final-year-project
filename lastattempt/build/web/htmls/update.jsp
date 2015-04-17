<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String points=request.getParameter("points");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","gosemathraj"); 
Statement st= con.createStatement(); 
ResultSet rs; 
try{
int i=st.executeUpdate("insert into games values ('"+points+"')"); 
if(i==1){
    out.println("lol");
}
}catch(Exception e) {
    out.println(e);
}
%>
