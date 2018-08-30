<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆图书管理系统</title>
<style type="text/css">
<!--
font-size:36px;
font-weight:bold;
-->
  </style>
  </head>
<body>
<form name="form1" method="post" action="Valid.jsp">
 <table width="400" height="120" border="1" align="center">
    <caption>
     <span class="STYLE1">登陆图书管理系统</span>
      </caption>
     <tr>
     <td width="166">用户名:</td>
     <td width="318"><input name="username" type="text" id="username"></td>
   </tr>
   <tr>
    <td width="166">密码:</td>
    <td width="318"><input name="password" type="text" id="password"><td>   
    </tr>
    <tr>
     <td colspan="2" align="center" > 
     <input type="submit" name="Submit" value="登陆">
     <input type="reset" name="Reset" value="取消">
    </td> 
     </tr>
   </table>
 </form>
</body>
 </html>