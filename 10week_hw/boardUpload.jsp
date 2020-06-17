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
	
	int id = 1;
	while(rs.next()) {
		id++;
	}
	
	sql = "insert into board values(" + id + ",?,?,?,sysdate)";
	
	PreparedStatement pStmt = ojdbc.connection.prepareStatement(sql);
	pStmt.setString(1, request.getParameter("subject"));
	pStmt.setString(2, request.getParameter("content"));
	pStmt.setString(3, request.getParameter("writer"));
	
	int i = pStmt.executeUpdate();
	
	pStmt.close();
	ojdbc.connection.close();
	
	response.sendRedirect("index.jsp");
%>