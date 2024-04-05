package com.example.web.controller;

import java.io.IOException;

import com.example.web.dao.EtudiantDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class insertEtudiant
 */
public class insertEtudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public insertEtudiant() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean insertionSuccessful = false;
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		int telephone = Integer.parseInt(request.getParameter("tele"));
		int idFiliere = Integer.parseInt(request.getParameter("id_filiere"));
		int CNE = Integer.parseInt(request.getParameter("CNE"));
		
		EtudiantDao etudiantDao = new EtudiantDao();
        insertionSuccessful=etudiantDao.insertEtudiant(nom,prenom,telephone,idFiliere,CNE);
        
		request.setAttribute("insertionSuccessful", insertionSuccessful);
		request.getRequestDispatcher("InsertEtudiant.jsp").forward(request, response);
	}

}
