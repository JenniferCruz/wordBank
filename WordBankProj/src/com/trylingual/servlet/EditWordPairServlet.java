package com.trylingual.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trylingual.model.WordPair;
import com.trylingual.service.WordPairService;
import com.trylingual.service.WordPairServiceImpl;

public class EditWordPairServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		WordPair w = new WordPairServiceImpl().getWordPair(id);
		request.setAttribute("wordPair", w);
		request.getRequestDispatcher("/WEB-INF/edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String word = request.getParameter("word");
		String pair = request.getParameter("translation");		
		int id = Integer.parseInt(request.getParameter("id"));
		
		WordPairService service = new WordPairServiceImpl();
		WordPair wp = service.getWordPair(id);
		wp.changeWordTo(word);
		wp.changePairTo(pair);
		service.update(wp);
		
		response.sendRedirect("index.html");
	}

}
