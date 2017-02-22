package com.trylingual.dao;

import java.util.ArrayList;
import java.util.List;
import com.trylingual.model.WordPair;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class WordPairDAOSql implements WordPairDAO {

	// TODO: How to store tags in db?
	
	@Override
	public List<WordPair> list() {
		List<WordPair> words = new ArrayList<>();
		WordPair w;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/wordbank";
			Connection con = DriverManager.getConnection(url, "root", "password");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM words;");
			while (rs.next()){
				// TODO: How to store/retrieve tags?
				String word = rs.getString("word");
				String pair = rs.getString("pair");
				w = new WordPair(word, pair);
				w.setID(rs.getInt("wID"));
				words.add(w);
			}
			stmt.close();
			con.close();
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		return words;
	}

	@Override
	public void save(WordPair word) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/wordbank";
			Connection con = DriverManager.getConnection(url, "root", "password");
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO words (`word`, `pair`) VALUES ( \" " +
					word.getWord() + "\", \"" + word.getPair() + "\" );");				
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}

	@Override
	public void update(WordPair word) {
		// TODO:
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/wordbank";
			Connection con = DriverManager.getConnection(url, "root", "password");
			Statement stmt = con.createStatement();
			stmt.executeUpdate("UPDATE words SET word =\"" + word.getWord()
			+ "\", pair=\"" + word.getPair()
			+ "\" WHERE wID=" + word.id());
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/wordbank";
			Connection con = DriverManager.getConnection(url, "root", "password");
			Statement stmt = con.createStatement();
			stmt.executeUpdate("DELETE FROM words WHERE wID = " + id + ";");				
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}

	@Override
	public WordPair get(int id) {
		WordPair word = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/wordbank";
			Connection con = DriverManager.getConnection(url, "root", "password");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM words WHERE wID=" + id + ";");
			if(rs.next()) {
				word = new WordPair(rs.getString("word"), rs.getString("pair"));
				word.setID(rs.getInt("wID"));				
			}
			// TODO: Add categories
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		System.out.println("Back from SQL " + word);
		return word;
	}

}
