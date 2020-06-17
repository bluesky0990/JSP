<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>DB 연동</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container">
			<div>
				<a href="index.jsp" class="shadow-sm p-4 mb-4 bg-white text-decoration-none text-info font-weight-bold display-4">Home</a>
			</div>
			<br><br>
			<div>
				<form action="boardUpload.jsp" method="post">
					<table class="table">
						<tr>
							<th><label for="subject">제목</label></th>
							<td><input type="text" name="subject" id="subject" placeholder="제목" style="width:25em;"></td>
							<th><label for="writer">이름</label></th>
							<td><input type="text" name="writer" id="writer" placeholder="이름" style="width:15em;"></td>
						</tr>
						<tr>
							<td colspan="4"><textarea name="content" rows="20" cols="130" placeholder="내용"></textarea></td>
						</tr>
						<tr>
							<td colspan="4" class="text-right"><button type="submit" class="btn btn-primary">글작성</button></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>