<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html;charset=GBK">
    <title>编辑图书信息</title>
<style type="text/css">
<!--
.STYLE1 {
font-size: 18px;
font-weight: bold;
}
-->
</style>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");
String strId = request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
PreparedStatement ps =con.prepareStatement("select * from t_bookedito where id=?");
ps.setInt(1,Integer.parseInt(strId));
ResultSet rs=ps.executeQuery();
if(rs.next()){
%>
<form name="form1" method="post" action="BookSaveEdite.jsp">
<div align="center" class="STYLE1">编辑图书信息</div>
<table width="300" height="120" border="1" align="center">
<tr>
<td width="74">编号：</td>
<td width="210"><input name="id" type="text" id="id" value="<%=rs.getString("id") %>"></td>
</tr>
<tr>
<td width="74">书名：</td>
<td width="210"><input name="name" type="text" id="name" value="<%=rs.getString("name") %>"></td>
</tr>
<tr>
<td>类别：</td>
<td><input name="publish" type="text" id="publish" value="<%=rs.getString("publish") %>"></td>
</tr>
<tr>
<td>简介：</td>
<td><input name="price" type="text" id="price" value="<%=rs.getInt("price") %>"></td>
</tr>
<tr>
<td colspan="2" align="center">
 <input type="submit" name="Submit"value="确定修改">
<input type="reset" name="Submit2" value="取消"></td>
</tr>
</table>
</form>
<%
}
con.close();
%>
</body>
</html>