package com.oracle.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySQLConnectorDemo {

	public static void main(String[] args) throws SQLException, ClassNotFoundException {

		System.out.println("Start");

		Class.forName("com.mysql.cj.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/oracle-demo";
		String user = "root";
		String password = "root";
		String sql = "SELECT * FROM emp";

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		con = DriverManager.getConnection(url, user, password);
		stmt = con.createStatement();
		rs = stmt.executeQuery(sql);

		while (rs.next()) {
			System.out.println(rs.getString(1));
		}

		System.out.println("End");

	}

}
