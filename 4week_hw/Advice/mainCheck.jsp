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
		<%
		request.setCharacterEncoding("utf-8");
		String dept = request.getParameter("dept");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String date = request.getParameter("date");
		String[] license = request.getParameterValues("license");
		String school = request.getParameter("school");
		String advice = request.getParameter("advice");
		%>
		<h2>사용자 입력 확인</h2>
		<hr>
		<table>
			<tr>
				<th>컨트롤 요소</th>
				<th>입력 값</th>
			</tr>
			<tr>
				<td>소속</td>
				<td><%=dept %></td>
			</tr>
			<tr>
				<td>성명</td>
				<td><%=name %></td>
			</tr>
			<tr>
				<td>현주소</td>
				<td><%=address %></td>
			</tr>
			<tr>
				<td>입사년월일</td>
				<td><%=date %></td>
			</tr>
			<tr>
				<td>학력</td>
				<td><%=school %></td>
			</tr>
			<tr>
				<td>자격증</td>
				<td><% for(String key : license) {
						out.print(key + " ");
					}
					%></td>
			</tr>
			<tr>
				<td>상담내용</td>
				<td><%=advice %></td>
			</tr>
			<tr>
				<td>각 폼 컨트롤의 이름들</td>
				<td><%
					Enumeration<String> control = request.getParameterNames();
					String keyName="";
					
					while(control.hasMoreElements()) {
						keyName = control.nextElement();
						out.println(keyName + " ");
					}
				%></td>
			</tr>
		</table>
	</body>
</html>