package com.oracle.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PrepDemo2 {

	public static void main(String[] args) throws SQLException {

		System.out.println("Start");

		String url = "jdbc:mysql://localhost:3306/oracle-demo";
		String user = "root";
		String password = "root";

		Connection c = DriverManager.getConnection(url, user, password);
		String sql = "INSERT INTO countrylanguage (CountryCode, Language, IsOfficial, Percentage) VALUES (?,?,?,?)";
		PreparedStatement ps = c.prepareStatement(sql);
		ps.setString(1, "ABW");
		ps.setString(2, "Klingon");
		ps.setString(3, "F");
		ps.setDouble(4, 0.9);
		ps.executeUpdate();

		ps.setString(1, "AFG");
		ps.setString(2, "Esperanto");
		ps.setString(3, "F");
		ps.setDouble(4, 1.2);
		ps.executeUpdate();

		ps.close();
		System.out.println("End");

	}

}
