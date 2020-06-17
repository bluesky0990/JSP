package week10hw;

import java.sql.*;

public class Ojdbc_connect {
	private String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	public Connection connection;
	
	public void ojdbc(String id, String pw) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			connection = DriverManager.getConnection(url, id, pw);
		} catch (Exception e) {
			System.out.println("드라이버 검색 실패: " + e);
		}
	}
}
