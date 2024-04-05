package com.example.web.controller;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.List;

import com.example.web.dao.DepartementDao;
import com.example.web.model.Departement;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class rechercheDepartement
 */
public class rechercheDepartement extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rechercheDepartement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String dpName = request.getParameter("searchNom");
        DepartementDao departementDao = new DepartementDao();
        List<Departement> departements = departementDao.rechercheDepartement(dpName);
        request.setAttribute("departements", departements);
        request.getRequestDispatcher("RechercheDepartement.jsp").forward(request, response);
	}


}
