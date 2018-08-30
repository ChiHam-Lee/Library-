 <%@ page language="java" contentType="text/html8" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>保存编辑</title>
</head>
<body>
 <% 
 request.setCharacterEncoding("utf-8");   
   String id=request.getParameter("id");
   System.out.println("id="+id);
   String na=request.getParameter("name");
   System.out.println("na="+na);
   String pub=request.getParameter("publish");
   System.out.println("pub="+pub);
   String str=request.getParameter("price");
   System.out.println("str="+str);	
 		Class.forName("com.mysql.jdbc.Driver");
 		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
		PreparedStatement ps =con.prepareStatement("update t_bookedito set id=?,name=?,publish=?,price=? where id=?");
			ps.setString(1,id);
       		ps.setString(2,na);
       		ps.setString(3,pub);
       		ps.setString(4,str);
       		ps.setString(5,id);
			ps.execute();
			con.close();
		    response.sendRedirect("BookList.jsp");
 	%>
  			</body>
  				</html>