package com.oracle.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

public class MySQLConnectorDemo {

	public static void main(String[] args) {

		System.out.println("Start");

		String url = "jdbc:mysql://localhost:3306/oracle-demo";
		String user = "root";
		String password = "root";

//		String sql = "SELECT * FROM emp "; // JOIN query 
		String sql = "SELECT * FROM emp WHERE eid = 106"; // JOIN query 

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			con = DriverManager.getConnection(url, user, password);

			stmt = con.createStatement();

//			stmt. method for performing CRUD operations on DB 

			rs = stmt.executeQuery(sql);

			ResultSetMetaData rsmd = rs.getMetaData();

			while (rs.next()) {

				for (int i = 1; i <= rsmd.getColumnCount(); i++) {
					System.out.print(rs.getString(i) + "\t");
				}

				System.out.println("");
				rs.close();
				stmt.close();
				con.close();
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		System.out.println("End");
	}
}
