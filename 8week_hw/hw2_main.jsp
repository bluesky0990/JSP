<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table, th, td {
				border: 1px solid gray;
				border-collapse: collapse;
			}
			td {
				padding: 10px;
			}
			a {
				text-decoration: none;
				color: blue;
			}
			input {
				align: center;
			}
		</style>
	</head>
	<body>
		<form action="hw2_result.jsp" method="post">
			<h2>글쓰기</h2>
			<table>
				<tr>
					<td colspan="2" style="text-align: right;"><a href="">글목록</a></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="content" rows="10" cols="50"></textarea></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;">
						<input type="submit" value="글쓰기">
						<input type="reset" value="다시작성">
						<input type="button" value="목록보기">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>