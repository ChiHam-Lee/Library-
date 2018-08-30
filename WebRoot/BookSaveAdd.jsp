<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>保存添加</title>
</head>
<body>
<%
   request.setCharacterEncoding("UTF-8");
   String id=request.getParameter("id");
   String na=request.getParameter("name");
   String pub=request.getParameter("publish");
   String str=request.getParameter("price");
       Class.forName("com.mysql.jdbc.Driver");
       Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
       PreparedStatement ps =con.prepareStatement("insert into t_bookedito(id,name,publish,price) values(?,?,?,?)");
       ps.setString(1,id);
       ps.setString(2,na);
       ps.setString(3,pub);
       ps.setString(4,str);   
       ps.execute();  
       //con.close();
       response.sendRedirect("BookList.jsp");
%>  
</body>
</html>