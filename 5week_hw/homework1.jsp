<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css.css">
	</head>
	<body>
		<div id="top">
			<jsp:include page="hw1_topmenu.jsp" />
		</div>
		
		<div id="left">
			<jsp:include page="hw1_leftmenu.jsp" />
		</div>
		
		<div id="content">
			<jsp:include page="hw1_content.jsp" />
		</div>
		
		<div id="bottom">
			<jsp:include page="hw1_botmenu.jsp" />
		</div>
	</body>
</html>