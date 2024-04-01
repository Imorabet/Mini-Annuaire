package com.example.web.model;

//@Entity
public class Etudiant {
    //@Id
    private int CNE;
    private String nom;
    private String prenom;
    private String telephone;

    //@ManyToOne
    private Filiere filiere;

    // Getters and setters
    public int getCNE() {
        return CNE;
    }

    public void setCNE(int cne) {
        this.CNE = cne;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prénom) {
        this.prenom = prénom;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String téléphone) {
        this.telephone = téléphone;
    }

    public Filiere getFiliere() {
        return filiere;
    }

    public void setFiliere(Filiere filière) {
        this.filiere = filière;
    }
}
