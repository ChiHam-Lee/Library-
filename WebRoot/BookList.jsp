<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%String path="request.getContextPath()" ;
  String basePath="request.getScheme()"+"://"+"request.getServerName()"+":"+"request.getSeverPort()"+path+"/";
     %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body>
<input type="button" name="" value="查询" onclick="jsp:window.location='Find.jsp';" />
    <% 
    request.setCharacterEncoding("UTF-8");
    String id=request.getParameter("id");
    Connection conn=null; 
    Statement stat=null; 
    ResultSet rs=null;
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/library";
    String user="root";
    String password="123456";
    conn=DriverManager.getConnection(url,user,password); 
    stat=conn.createStatement(); 
    rs=stat.executeQuery("select * from t_bookedito");
    %>
    <br>
        <h3 align="center" style="font-size:30px">图书信息</h3>
          
    <br>
     <table width="450" border="100" cellSpacing=1 style="font-size:15pt;border:dashed 1pt" align="center">
    <tr>
    <td>编号</td>
    <td>书名</td>
    <td>类别</td>
    <td>简介</td>
    </tr>
    <% 
    while(rs.next())
    {
    out.print("<tr>");
    out.print("<td>"+rs.getString("id")+"</td>");
    out.print("<td>"+rs.getString("name")+"</td>");
    out.print("<td>"+rs.getString("publish")+"</td>");
    out.print("<td>"+rs.getString("price")+"</td>");
    out.print("<td><a href='BookUpdate.jsp?id="+rs.getInt("id")+"'>修改</a></td>");
    out.print("<td><a href='BookSave.jsp?id="+rs.getInt("id")+"'>增加</a></td>");   
    out.print("<td><a href='BookDel.jsp?id="+rs.getInt("id")+"'>删除</a></td>");   
        %>
    <%
    out.print("</tr>");
    
    }
    %>
    
      </table>
      <br>
    <%
    if(rs!=null)
    {
        rs.close();
    }
    
        if(stat!=null)
    {
        stat.close();
    }
        if(conn!=null)
    {
        conn.close();
    }
    %> 
  </body>
</html>
	
    