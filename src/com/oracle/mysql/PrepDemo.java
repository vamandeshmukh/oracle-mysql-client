package com.oracle.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PrepDemo {

	public static void main(String[] args) {

		System.out.println("Start");

		String url = "jdbc:mysql://localhost:3306/oracle-demo";
		String user = "root";
		String password = "root";

		String sql = "INSERT INTO emp VALUES(?, ?, ?)";

		Connection con = null;
		PreparedStatement stmt = null;

		try {
			con = DriverManager.getConnection(url, user, password);

			stmt = con.prepareStatement(sql);

			stmt.setInt(1, 106);
			stmt.setString(2, "Vaman");
			stmt.setDouble(3, 90000);

			int num = stmt.executeUpdate();

			System.out.println(num);

			stmt.close();
			con.close();

		} catch (

		SQLException e) {
			System.out.println(e.getMessage());
		}

		System.out.println("End");
	}
}
