package com.example.web.model;

//@Entity
public class Filiere {
    //@Id
    private int id;
    private String nom;

    //@ManyToOne
    private Departement departement;

    //@OneToMany(mappedBy = "filiere")
    //private List<Etudiant> etudiants;

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

    public Departement getDepartement() {
        return departement;
    }

    public void setDepartement(Departement département) {
        this.departement = département;
    }

    /**public List<Etudiant> getEtudiants() {
        return étudiants;
    }

    public void setEtudiants(List<Etudiant> étudiants) {
        this.étudiants = étudiants;
    }**/
}
