<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
    import = "week10hw.Ojdbc_connect" %>
<%
	request.setCharacterEncoding("utf-8");

	Ojdbc_connect ojdbc = new Ojdbc_connect();
	ojdbc.ojdbc("JSP", "1111");
	
	String sql = "select * from board";
	
	Statement st = ojdbc.connection.createStatement();
	st.executeQuery(sql);
	ResultSet rs = st.executeQuery(sql);
%>
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
				<table class="table text-center">
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
					<%
					while(rs.next()) {
						int id = rs.getInt("id");
						String subject = rs.getString("subject");
						String content = rs.getString("content");
						String writer = rs.getString("writer");
						String regdate = rs.getString("regdate");
					%>
					<tr>
						<td><%=id %></td>
						<td style="width: 25em;"><a href="boardEdit.jsp?id=<%=id%>"><%=subject %></a></td>
						<td><%=writer %></td>
						<td><%=regdate %></td>
					</tr>
					<%
					}
					rs.close();
					st.close();
					ojdbc.connection.close();
					%>
				</table>
			</div>
			<div class="text-right">
				<button type="button" class="btn btn-primary" onclick="location.href='boardWrite.jsp'">게시글 작성</button>
			</div>
		</div>
	</body>
</html>