<%@ page import="java.sql.*,com.manager.DBConnect" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
      tr,td,table{
        border: 1px solid blueviolet;
      }
    </style>
</head>
<body>
  <%
   try{
   DBConnect dbc=new DBConnect();
   Connection con=dbc.connection;
   Statement stm=con.createStatement();
   ResultSet rs=stm.executeQuery("SELECT * FROM `expence_manager`");
   out.println("<table>");
   out.println("<tr><th>Name</th><th>Category</th><th>Description</th><th>Amount</th><th>Date</th></tr>");
   while(rs.next()){
     out.println("<tr><td>"+rs.getString("name")+"</td>"+
     "<td>"+rs.getString("category")+"</td>"+
     "<td>"+rs.getString("description")+"</td>"+
     "<td>"+rs.getInt("amount")+"</td>"+
     "<td>"+rs.getDate("date")+"</td>"+
     "</tr>");
   }
   out.println("</table>");
   }catch(SQLException e){
   out.println("error!");
   }
  %>
  <a href="view.jsp">view all</a>
      <a href="index.jsp">Add One</a>
</body>
</html>
