package com.example.web.controller;

import java.io.IOException;
import java.util.*;

import com.example.web.dao.FiliereDao;
import com.example.web.model.Filiere;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class getAllFilieres
 */
public class getAllFilieres extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public getAllFilieres() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("servelet de filiere");
		FiliereDao filiereDao = new FiliereDao();
		List<Filiere> filieres = filiereDao.getFilieres();

		request.setAttribute("filieres", filieres);
		request.getRequestDispatcher("AfficherFilieres.jsp").forward(request, response);

	}

}
