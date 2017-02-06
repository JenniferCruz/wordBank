package com.trylingual.service;

import java.util.List;
import com.trylingual.model.WordPair;

/**
 * 
 * */
public interface WordPairListService {
	
	WordPair[] list();
	void add(WordPair word);
	void delete(int wID);
	void update(WordPair word);
	
}