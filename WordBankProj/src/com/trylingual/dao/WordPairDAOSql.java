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
	
	@Override
	public List<WordPair> list() {
		List<WordPair> words = new ArrayList<>();
		WordPair w = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/wordbank";
			Connection con = DriverManager.getConnection(url, "root", "password");
			Statement stmt = con.createStatement();

			ResultSet rs = stmt.executeQuery("SELECT words.word_id, words.word, "
					+ "words.pair, tags.tag FROM words LEFT JOIN tags_to_words "
					+ "ON words.word_id=tags_to_words.word_id LEFT JOIN tags "
					+ "ON tags.tag_id=tags_to_words.tag_id ORDER BY words.word_id;");
			
			while (rs.next()) {
				String word = rs.getString("word");
				String pair = rs.getString("pair");
				int id = rs.getInt("word_id");
				String tag = rs.getString("tag");

				if (w == null || w.getId() != id) {
					w = new WordPair(word, pair);
					w.setID(id);
				}
				
				if (tag != null) 
					w.tag(tag);
				
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

	private List<String> tags(int wordId) {
		List<String> tags = new ArrayList<>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/wordbank";
			Connection con = DriverManager.getConnection(url, "root", "password");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(" SELECT tag FROM tags, tags_to_words "
					+ "WHERE tags.tag_id = tags_to_words.tag_id "
					+ "AND tags_to_words.word_id =" + wordId + ";");
			while (rs.next()) 
				tags.add(rs.getString("tag"));
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		return tags;
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
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/wordbank";
			Connection con = DriverManager.getConnection(url, "root", "password");
			Statement stmt = con.createStatement();
			stmt.executeUpdate("UPDATE words SET word =\"" + word.getWord()
			+ "\", pair=\"" + word.getPair()
			+ "\" WHERE word_id=" + word.id());
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
			stmt.executeUpdate("DELETE FROM words WHERE word_id = " + id + ";");				
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
			ResultSet rs = stmt.executeQuery("SELECT * FROM words WHERE word_id=" + id + ";");
			if(rs.next()) {
				word = new WordPair(rs.getString("word"), rs.getString("pair"));
				word.setID(rs.getInt("word_id"));				
			}
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
		return word;
	}

}
