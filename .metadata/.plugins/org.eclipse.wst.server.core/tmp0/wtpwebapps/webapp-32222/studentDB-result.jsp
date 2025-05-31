<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="design.studentBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>データベースの内容表示</title>
</head>
<body>

<h1>データベースの内容を表示します</h1>

<TABLE>
    <TR>
    <TD>学籍番号</TD>
    <TD>氏名</TD>
    <TD>GPA</TD>
	</TR>
<%
   ArrayList<studentBean> list = (ArrayList<studentBean>)request.getAttribute("studentBeanList");
   for (int i=0; i<list.size(); i++) {
	   studentBean sb = (studentBean)list.get(i);
%>
    <TR>
    <TD><%=sb.getId() %></TD>
    <TD><%=sb.getName() %></TD>
    <TD><%=sb.getGpa() %></TD>
	</TR>
<%
   } // for ループの終わり
%>
</TABLE>
<a href="index.html">戻る</a>

</body>
</html>