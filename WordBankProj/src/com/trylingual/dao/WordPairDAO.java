package com.trylingual.dao;

import java.util.List;
import com.trylingual.model.WordPair;

/**
 * Provides a list of all WordPairs 
 * contained in a specific listing
 * to be retrieved from a database
 */
public interface WordPairDAO {
	
	List<WordPair> list();
	void save(WordPair word);
	void update(WordPair word);
	void delete(int wID);
	WordPair get(int id);
	
}