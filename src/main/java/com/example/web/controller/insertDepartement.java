package com.example.web.controller;

import java.io.IOException;

import com.example.web.dao.DepartementDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class insertDepartement
 */
public class insertDepartement extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public insertDepartement() {
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
        String nom_d = request.getParameter("nom_departement");

       
                DepartementDao departementDao = new DepartementDao();
                insertionSuccessful = departementDao.insertDepartement(nom_d);
        

        request.setAttribute("insertionSuccessful", insertionSuccessful);
        request.getRequestDispatcher("InsertDepartement.jsp").forward(request, response);
    }
}
