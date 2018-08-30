<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加图书信息</title>
<style type="text/css">
<!--
.STYLE1 {
font-size: 36px;
font-weight: bold;
}-
->
</style>
</head>
<body>
<form name="form1" method="post" action="BookSaveAdd.jsp">
<div align="center" class="STYLE1">添加学图书信息</div>
<table width="300" height="120" border="1" align="center">
<tr>
<td width="74">编号：</td>
<td width="210"><input name="name" type="text" id="name"></td>
</tr>
<tr>
<td>书名：</td>
<td><input name="name" type="text" id="name"></td>
</tr>
<tr>
<td>类别：</td>
<td><input name="publish" type="text" id="publish"></td>
</tr>
<tr>
<td>简介：</td>
<td><input name="price" type="text" id="price"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" name="Submit" value="确定添加">
<input type="reset" name="Submit2" value="重置"></td>
</tr>
</table>
</form>
</body>
</html>