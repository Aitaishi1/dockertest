<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="design.Fortune" %>
<html>
<head>
<meta charset="UTF-8">
<title>ここにタイトルを追加</title>
</head>
<body>
<% Fortune fortune = new Fortune(); %>

Today will be a <%= fortune.getFortune() %> day!

</body>
</html>