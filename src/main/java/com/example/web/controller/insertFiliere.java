package com.example.web.controller;

import java.io.IOException;

import com.example.web.dao.FiliereDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class insertFiliere
 */
public class insertFiliere extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public insertFiliere() {
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean insertionSuccessful = false;
		int departementId = Integer.parseInt(request.getParameter("id_departement"));
        String nom = request.getParameter("nom_filiere");

        FiliereDao filiereDao = new FiliereDao();
        insertionSuccessful=filiereDao.insertFiliere(departementId, nom);
        request.setAttribute("insertionSuccessful", insertionSuccessful);
        request.getRequestDispatcher("InsertFiliere.jsp").forward(request, response);
	}

}
