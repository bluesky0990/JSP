<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table, th, td {
				border: 1px solid black;
				border-collapse: collapse;
			}
		</style>
	</head>
	<body>
		<jsp:useBean id="nm" class="ch10.hw1_Member"></jsp:useBean>
		<jsp:setProperty property="*" name="nm"/>
		<h2>학생정보</h2>
		<hr>
		<table>
			<tr>
				<th>학번</th>
				<td>${nm.stNum}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${nm.name}</td>
			</tr>
			<tr>
				<th>학년</th>
				<td>${nm.grade}</td>
			</tr>
			<tr>
				<th>선택과목</th>
				<td>${nm.subject}</td>
			</tr>
		</table>
	</body>
</html>