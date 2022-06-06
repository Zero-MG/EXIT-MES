<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<br>
	<a href="/account/login"><b> 로그인 바로가기 </b></a>
	<br>
	<a href="/information/main"><b> 첫번째 과제 바로가기 </b></a>
	<br>
	<a href="/inspection/main"><b> 두번째 과제 바로가기 </b></a>
</body>
</html>









