package com.example.web.dao;

import java.sql.*;
import java.util.*;

import com.example.web.model.Departement;
import com.example.web.model.Etudiant;
import com.example.web.model.Filiere;

public class EtudiantDao {
	private static final String URL = "jdbc:mysql://localhost:3308/annuaire";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "123456";

    public List<Etudiant> getEtudiants() {
        List<Etudiant> etudiants = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
            String query = "SELECT e.*, f.*, d.* " +
                           "FROM etudiant e " +
                           "INNER JOIN filiere f ON e.filiere_id = f.id " +
                           "INNER JOIN departement d ON f.departement_id = d.id";

            try (Statement statement = connection.createStatement();
                 ResultSet resultSet = statement.executeQuery(query)) {

                while (resultSet.next()) {
                    Etudiant etudiant = new Etudiant();
                    etudiant.setCNE(resultSet.getInt("CNE"));
                    etudiant.setNom(resultSet.getString("nom"));
                    etudiant.setPrenom(resultSet.getString("prenom"));
                    etudiant.setTelephone(resultSet.getString("telephone"));

                    Filiere filiere = new Filiere();
                    filiere.setId(resultSet.getInt("f.id"));
                    filiere.setNom(resultSet.getString("f.nom"));

                    Departement departement = new Departement();
                    departement.setId(resultSet.getInt("d.id"));
                    departement.setNom(resultSet.getString("d.nom"));

                    filiere.setDepartement(departement);
                    etudiant.setFiliere(filiere);

                    etudiants.add(etudiant);
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return etudiants;
    }

	public boolean insertEtudiant(String nom, String prenom, int telephone, int idFiliere,int CNE) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO etudiant ( nom,prenom,telephone,filiere_id ,CNE) VALUES (?, ?,?,?,?)";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement pstmt = connection.prepareStatement(sql)) {
        	pstmt.setString(1, nom);
        	pstmt.setString(2, prenom);
        	pstmt.setInt(3, telephone);
        	 pstmt.setInt(4, idFiliere);
        	 pstmt.setInt(5, CNE);
            int rowsInserted = pstmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
	}
}
