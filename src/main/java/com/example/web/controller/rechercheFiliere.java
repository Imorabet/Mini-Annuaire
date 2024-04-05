package com.example.web.controller;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.List;

import com.example.web.dao.FiliereDao;
import com.example.web.model.Filiere;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class rechercheFiliere
 */
public class rechercheFiliere extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rechercheFiliere() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String filName = request.getParameter("searchNom");
        FiliereDao filiereDao = new FiliereDao();
        List<Filiere> filieres = filiereDao.rechercheFiliere(filName);
        request.setAttribute("filieres", filieres);
        request.getRequestDispatcher("RechercheFiliere.jsp").forward(request, response);
	}

	
}
