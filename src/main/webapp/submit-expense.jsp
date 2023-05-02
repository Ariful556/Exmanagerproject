<%@ page import="com.manager.DBConnect,java.util.*,java.sql.*,java.text.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
DBConnect db=new DBConnect();
Connection con=db.connection;
PreparedStatement statement = con.prepareStatement("INSERT INTO `expence_manager` (`id`, `category`, `date`, `name`, `description`, `amount`) VALUES (?, ?, ?, ?, ?, ?)");
String category =request.getParameter("category");
String name =request.getParameter("name");
String description =request.getParameter("description");
int amount = Integer.parseInt(request.getParameter("amount"));
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
java.util.Date date = format.parse(request.getParameter("date"));
java.sql.Date sqlDate = new java.sql.Date(date.getTime());
statement.setInt(1, new Random().nextInt());
statement.setString(2, category);
statement.setDate(3, sqlDate);
statement.setString(4, name);
statement.setString(5, description);
statement.setInt(6, amount);
if(statement.executeUpdate()>0){
out.println("<h1>Successfully Saved!!</h1>");
}
out.println("<a href=\"view.jsp\">view all</a>");
out.println("<a href=\"index.jsp\">Add One</a>");
%>
