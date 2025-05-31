<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="design.Fibonacci" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>odd</title>
</head>
<body>

<% Fibonacci fib = (Fibonacci)request.getAttribute("fibonacci"); %>
入力した数字 <%=fib.getN() %>のフィボナッチ数列は <%=fib.getResult() %> で「奇数」でした。

<a href="fibonacci.html">始めに戻る</a>

</body>
</html>