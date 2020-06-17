<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
    import = "week10hw.Ojdbc_connect" %>
<%
	request.setCharacterEncoding("utf-8");

	Ojdbc_connect ojdbc = new Ojdbc_connect();
	ojdbc.ojdbc("JSP", "1111");
	
	String sql = "select * from board where id=" + request.getParameter("id");
	Statement st = ojdbc.connection.createStatement();
	st.executeQuery(sql);
	ResultSet rs = st.executeQuery(sql);
	
	String subject = null;
	String writer = null;
	String content = null;
	
	while(rs.next()) {
		subject = rs.getString("subject");
		writer = rs.getString("writer");
		content = rs.getString("content");
	}
	
	rs.close();
	st.close();
	ojdbc.connection.close();
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
		<style>
		</style>
	</head>
	<body>
		<div class="container">
			<div>
				<a href="index.jsp" class="shadow-sm p-4 mb-4 bg-white text-decoration-none text-info font-weight-bold display-4">Home</a>
			</div>
			<br><br>
			<div>
				<form action="boardUpdate.jsp?id=<%=request.getParameter("id")%>" method="post">
					<table class="table">
						<tr>
							<th><label for="subject">제목</label></th>
							<td><input type="text" name="subject" id="subject" placeholder="제목" style="width:25em;" value="<%=subject%>"></td>
							<th><label for="writer">이름</label></th>
							<td><input type="text" name="writer" id="writer" placeholder="이름" style="width:15em;" value="<%=writer%>" disabled></td>
						</tr>
						<tr>
							<td colspan="4"><textarea name="content" rows="20" cols="150" placeholder="내용"><%=content%></textarea></td>
						</tr>
						<tr>
							<td colspan="4" class="text-right">
								<input type="submit" style="width:7em;" class="btn btn-primary" value="수정완료">
								<input type="button" style="width:7em;" class="btn btn-secondary" onclick="location.href='boardDelete.jsp?id=<%=request.getParameter("id")%>'" value="글삭제">
								<input tpye="button" style="width:7em;" class="btn btn-secondary" onclick="location.href='index.jsp'" value="목록">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>