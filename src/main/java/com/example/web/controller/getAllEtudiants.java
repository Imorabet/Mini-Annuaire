package com.example.web.controller;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.List;

import com.example.web.dao.EtudiantDao;
import com.example.web.model.Etudiant;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class getAllEtudiants
 */
public class getAllEtudiants extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getAllEtudiants() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EtudiantDao etudiantDao = new EtudiantDao();
        List<Etudiant> etudiants = etudiantDao.getEtudiants();

        request.setAttribute("etudiants", etudiants);
        request.getRequestDispatcher("AfficherEtudiants.jsp").forward(request, response);
	}

}
