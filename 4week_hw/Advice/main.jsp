<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Enumeration"
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table, th, td {
				border-collapse: collapse;
			}
			
			th, td {
				border: 1px dotted black;
			}
			
			th {
				background-color: purple;
				color: yellow;
			}
		</style>
	</head>
	<body>
		<h2>개인면담 카드</h2>
		<hr>
		<form action="mainCheck.jsp" method="post" >
			<table>
				<tr>
					<th>소속</th>
					<td><input type="text" name="dept"></td>
				</tr>
				<tr>
					<th>성명</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>현주소</th>
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<th>입사년월일</th>
					<td><input type="date" name="date"></td>
				</tr>
				<tr>
					<th>최종학력</th>
					<td>
						<input type="radio" name="school" id="middle" value="중졸">
						<label for="middle">중졸</label>
						<input type="radio" name="school" id="high" value="고졸">
						<label for="high">고졸</label>
						<input type="radio" name="school" id="college" value="전문대졸">
						<label for="college">전문대졸</label>
						<input type="radio" name="school" id="university" value="대졸">
						<label for="university">대졸</label>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>자격증</legend>
								<input type="checkbox" name="license" id="car2" value="자동차2종">
								<label for="car2">자동차2종</label>
								<input type="checkbox" name="license" id="info" value="정보처리산업기사">
								<label for="info">정보처리산업기사</label>
								<input type="checkbox" name="license" id="com" value="컴퓨터활용">
								<label for="com">컴퓨터활용</label>
								<input type="checkbox" name="license" id="etc" value="기타">
								<label for="etc">기타</label>
						</fieldset>
					</td>
				</tr>
				<tr>
					<th>상담내용</th>
					<td><textarea name="advice" rows="10" cols="40" placeholder="상담내역 입력하기"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="입력완료">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="다시입력"></td>
				</tr>
			</table>
		</form>
	</body>
</html>