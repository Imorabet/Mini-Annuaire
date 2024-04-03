package com.example.web.controller;

import java.io.IOException;
import java.util.*;

import com.example.web.dao.DepartementDao;
import com.example.web.model.Departement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class getAllDepartements
 */
public class getAllDepartements extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public getAllDepartements() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DepartementDao departmentDao = new DepartementDao();
		List<Departement> departments = departmentDao.getDepartements();
		// Set the departments as a request attribute
		request.setAttribute("departments", departments);

		// Forward the request to index.jsp
		request.getRequestDispatcher("AfficherDepartements.jsp").forward(request, response);
	}
}
