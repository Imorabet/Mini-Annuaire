package com.example.web.controller;

import java.io.IOException;
import java.util.List;

import com.example.web.dao.EtudiantDao;
import com.example.web.model.Etudiant;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class rechercheEtudiant
 */
public class rechercheEtudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public rechercheEtudiant() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String studentName = request.getParameter("searchNom");
        EtudiantDao etudiantDao = new EtudiantDao();
        List<Etudiant> etudiants = etudiantDao.rechercheEtudiant(studentName);
        request.setAttribute("etudiants", etudiants);
        request.getRequestDispatcher("RechercheEtudiant.jsp").forward(request, response);
    
	}


}
