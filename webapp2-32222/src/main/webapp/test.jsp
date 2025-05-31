<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>JSPのテストページ</title>
</head>
<body>

<h1>例１：javaの実行（コード１行）</h1>
1+2+3+4+5 は <%= 1+2+3+4+5 %> です。

<h1>例２：Javaの実行（コードブロック）</h1>
<%
int count=1;
for( int i=2; i<=10; i++){
count *= i;
}
%>
10の階乗(10!)は<%= count %> です。

</body>
</html>