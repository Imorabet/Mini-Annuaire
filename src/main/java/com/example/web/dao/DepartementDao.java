package com.example.web.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.example.web.model.Departement;

public class DepartementDao {
    // JDBC URL, username, and password of MySQL server
    private static final String URL = "jdbc:mysql://localhost:3308/annuaire";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "123456";

    public List<Departement> getDepartements() {
        List<Departement> departments = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
            // Check if connection is successful
            if (connection != null) {
                System.out.println("Database connection established successfully.");

                try (Statement statement = connection.createStatement();
                     ResultSet resultSet = statement.executeQuery("SELECT * FROM departement")) {

                    while (resultSet.next()) {
                        Departement department = new Departement();
                        department.setId(resultSet.getInt("id"));
                        department.setNom(resultSet.getString("nom"));
                        departments.add(department);
                    }

                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } else {
                System.out.println("Failed to establish database connection.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return departments;
    }

	public boolean insertDepartement( String nom_d) {
		// TODO Auto-generated method stub
		  String sql = "INSERT INTO departement ( nom) VALUES ( ?)";

	        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
	             PreparedStatement pstmt = connection.prepareStatement(sql)) {
	             pstmt.setString(1, nom_d);
	            int rowsInserted = pstmt.executeUpdate();
	            return rowsInserted > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	}

	public List<Departement> rechercheDepartement(String dpName) {
		// TODO Auto-generated method stub
		 List<Departement> departements = new ArrayList<>();

	        String sql = "SELECT * FROM departement WHERE nom LIKE ?";
	        
	        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
	             PreparedStatement pstmt = connection.prepareStatement(sql)) {
	            
	            // Set the search parameter
	            pstmt.setString(1, "%" + dpName + "%");

	            // Execute the query
	            try (ResultSet resultSet = pstmt.executeQuery()) {
	                while (resultSet.next()) {
	                    Departement departement = new Departement();
	                    departement.setId(resultSet.getInt("id"));
	                    departement.setNom(resultSet.getString("nom"));
	                    departements.add(departement);
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return departements;
	}
}
