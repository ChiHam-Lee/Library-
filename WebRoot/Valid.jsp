<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>判断登录</title>
</head>
    <body>
<%
String user=request.getParameter("username");
String pass=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
PreparedStatement ps =con.prepareStatement("select * from sys_user username= ? and password = ?");

     ps.setString(1,user);
     ps.setString(2,pass);
     //ResultSet rs = ps.executeQuery();
     if(user.equals("123")&&pass.equals("123"))
     {
     response.sendRedirect("BookList.jsp");
     }
     else response.sendRedirect("Login.jsp");
     %>
</body>
</html>