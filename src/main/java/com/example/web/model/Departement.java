package com.example.web.model;

public class Departement {
	// @Id
	private int id;
	private String nom;

	/*
	 * @OneToMany(mappedBy = "département") private List<Filière> filières;
	 */

	// Getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	@Override
	public String toString() {
		return "Departement [id=" + id + ", nom=" + nom + "]";
	}
}
