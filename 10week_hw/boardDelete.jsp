<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
    import = "week10hw.Ojdbc_connect" %>
<%
	request.setCharacterEncoding("utf-8");

	Ojdbc_connect ojdbc = new Ojdbc_connect();
	ojdbc.ojdbc("JSP", "1111");
	
	String sql = "delete from board where id=?";

	PreparedStatement pStmt = ojdbc.connection.prepareStatement(sql);
	pStmt.setString(1, request.getParameter("id"));
	
	int i = pStmt.executeUpdate();
	
	pStmt.close();
	ojdbc.connection.close();
	
	response.sendRedirect("index.jsp");
%>