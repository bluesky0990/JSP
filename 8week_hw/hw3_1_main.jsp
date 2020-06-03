<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="hw3_1_result.jsp" method="post">
			<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
			<hr>
			학번: <input type="text" name="stNum" ><br>
			이름: <input type="text" name="name" ><br>
			학년: <input type="radio" name="grade" id="one" value="1"><label for="one">1학년</label>
			<input type="radio" name="grade" id="two" value="2"><label for="two">2학년</label><br>
			선택과목: <select name="subject">
				<option value="JSP">JSP</option>
				<option value="Java">Java</option>
			</select><br>
			<input type="submit" value="확인">
		</form>
	</body>
</html>