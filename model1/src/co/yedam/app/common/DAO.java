﻿package co.yedam.app.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DAO {
	protected Connection conn;
	protected PreparedStatement psmt;
	protected ResultSet rs;
	protected DataSource ds;   //컨넥션 POOL 사용을 위한 데이터연결 생성 객체
	
	private String driver="oracle.jdbc.driver.OracleDriver";
	private String url="jdbc:oracle:thin:@localhost:1521:xe";
	private String user="hr";
	private String password="hr";
	
	public DAO() {
		try {
			Class.forName(driver);  //DataSource 객체로 대체
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("DB연결성공");
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			System.out.println("DB연결 실패");
		}
		
		
		/*
		 * try { Context initContext = new InitialContext(); Context envContext =
		 * (Context)initContext.lookup("java:/comp/env"); ds =
		 * (DataSource)envContext.lookup("jdbc/micol"); conn = ds.getConnection(); }
		 * catch (NamingException | SQLException e) { e.printStackTrace(); }
		 */
		
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
			System.out.println("DB닫음");
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("DB닫음 실패");
		}
	}
}
