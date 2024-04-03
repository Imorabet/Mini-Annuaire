package com.example.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.example.web.model.Departement;
import com.example.web.model.Filiere;

public class FiliereDao {
	 private static final String URL = "jdbc:mysql://localhost:3308/annuaire";
	    private static final String USERNAME = "root";
	    private static final String PASSWORD = "123456";

	    public List<Filiere> getFilieres() {
	        List<Filiere> filieres = new ArrayList<>();

	        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
	            // Check if connection is successful
	            if (connection != null) {
	                System.out.println("Database connection established successfully.");

	                String query = "SELECT f.id AS filiere_id, f.nom AS filiere_nom, d.id AS departement_id, d.nom AS departement_nom " +
	                               "FROM filiere f INNER JOIN departement d ON f.departement_id = d.id";

	                try (Statement statement = connection.createStatement();
	                     ResultSet resultSet = statement.executeQuery(query)) {

	                    while (resultSet.next()) {
	                        Filiere filiere = new Filiere();
	                        filiere.setId(resultSet.getInt("filiere_id"));
	                        filiere.setNom(resultSet.getString("filiere_nom"));

	                        Departement departement = new Departement();
	                        departement.setId(resultSet.getInt("departement_id"));
	                        departement.setNom(resultSet.getString("departement_nom"));

	                        filiere.setDepartement(departement);
	                        filieres.add(filiere);
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

	        return filieres;
	    }

		public boolean insertFiliere(int departementId, String nom) {
			// TODO Auto-generated method stub
			 String sql = "INSERT INTO filiere (departement_id, nom) VALUES (?, ?)";

		        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		             PreparedStatement pstmt = connection.prepareStatement(sql)) {
		        	 pstmt.setInt(1, departementId);
		             pstmt.setString(2, nom);
		            int rowsInserted = pstmt.executeUpdate();
		            return rowsInserted > 0;
		        } catch (SQLException e) {
		            e.printStackTrace();
		            return false;
		        }
		}
		
}
