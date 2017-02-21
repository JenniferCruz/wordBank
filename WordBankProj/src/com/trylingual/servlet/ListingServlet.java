package com.trylingual.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trylingual.model.WordPair;
import com.trylingual.service.WordPairServiceImpl;

/** */
public class ListingServlet extends HttpServlet {

	private static final long serialVersionUID = 1L; // ???

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WordPair[] words = new WordPairServiceImpl().list();
		request.setAttribute("wordpairs", words);
		String url = "/WEB-INF/index.jsp";
        request.getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
