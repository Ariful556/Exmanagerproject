<%@ page import="java.sql.*,com.manager.DBConnect" %>
<%
 try{
 DBConnect dbc=new DBConnect();
 Connection con=dbc.connection;
 Statement stm=con.createStatement();
 ResultSet rs=stm.executeQuery("SELECT * from expense");
 out.println("<table style=\"border:1px solid #000;\">");
 while(rs.next()){
   out.println("<tr style=\"border:1px solid #000;\"><td style=\"border:1px solid #000;\">"+rs.getString("name")+"</td></tr>");
 }
 out.println("</table>");
 }catch(SQLException e){
 }
%>