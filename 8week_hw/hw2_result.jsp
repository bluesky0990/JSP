<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:useBean id="nms" class="ch10.hw2_Member"></jsp:useBean>
		<jsp:setProperty property="*" name="nms"/>
		이름: <jsp:getProperty property="name" name="nms"/><br>
		제목: <jsp:getProperty property="title" name="nms"/><br>
		이메일: <jsp:getProperty property="email" name="nms"/><br>
		내용: <jsp:getProperty property="content" name="nms"/><br>
		비밀번호: <jsp:getProperty property="pwd" name="nms"/><br>
	</body>
</html>