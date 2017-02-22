package com.trylingual.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trylingual.model.WordPair;
import com.trylingual.service.WordPairServiceImpl;

/** */
public class AddNewWordPairServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/WEB-INF/index.jsp";
        request.getRequestDispatcher(url).forward(request, response);
        // getServletContext().getRequestDispatcher(url).forward(request, response); // How are this and previous line different?
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WordPair w = new WordPair(request.getParameter("word"), request.getParameter("translation"));
		new WordPairServiceImpl().add(w);
		response.sendRedirect("index.html");
	}

}
