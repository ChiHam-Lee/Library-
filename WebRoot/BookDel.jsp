<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
   <title>删除页面</title>
   <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
   <meta http-equiv="refesh" content="3,url=BookList.jsp">
   </head>
   <body>
   	<% 
   		request.setCharacterEncoding("UTF-8");
   		String bookid=request.getParameter("id");
   		Class.forName("com.mysql.jdbc.Driver");
   		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
   		PreparedStatement ps=con.prepareStatement("delete from t_bookedito where id = ?" );
   		     ps.setInt(1,Integer.parseInt(bookid));
   		     int i= ps.executeUpdate();	
   		     if(i!=0)	{
   		         out.print("删除成功！");
   		     }else{
   		       	 out.print("删除失败！");
   		     }	       
   			 con.close();                                                                                                                                                                                                                      
   		%>
   		<a href="BookList.jsp">返回</a>
      </body>
   </html>