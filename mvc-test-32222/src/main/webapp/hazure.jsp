<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="design.Guess" %>
<html>
<head>
<meta charset="UTF-8">
<title>hazure</title>
</head>
<body bgcolor="skyblue">

<% Guess guess = (Guess)request.getAttribute("kazuate"); %>
入力した数字<%=guess.getYosou() %>の結果は「はずれ」でした。
（正解は <%=guess.getSeikai() %>でした）

<a href="form.html">始めに戻る</a>

</body>
</html>