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
		이름: ${nms.name}<br>
		제목: ${nms.title}><br>
		이메일: ${nms.email}<br>
		내용: ${nms.content}<br>
		비밀번호: ${nms.pwd}<br>
	</body>
</html>