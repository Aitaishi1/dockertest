<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.Date" %>
<html>
<head>
<meta charset="UTF-8">
<title>JSPのテストページ</title>
</head>
<body>

<h1>例３：標準ライブラリの利用</h1>

<%
String dateStr;
Date date;

date = new Date();
dateStr = date.toString();
%>

現在の日時は <%= dateStr %> です。

</body>
</html>