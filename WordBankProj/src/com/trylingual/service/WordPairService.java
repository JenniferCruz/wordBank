package com.trylingual.service;

import com.trylingual.model.WordPair;

/**
 * 
 * */
public interface WordPairService {
	
	WordPair[] list();
	void add(WordPair word);
	void delete(int wID);
	void update(WordPair word);
	WordPair getWordPair(int id);
	
}