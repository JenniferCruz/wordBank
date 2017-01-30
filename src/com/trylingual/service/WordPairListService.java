package com.trylingual.service;

import java.util.ArrayList;
import java.util.List;

import com.trylingual.dao.WordPairDAO;
import com.trylingual.model.WordPair;
import com.trylingual.model.WordPairList;

public class WordPairListService {
	
	private final WordPairDAO wpDAO;
	private WordPairList wpList;
	
	public WordPairListService() {
		wpDAO = new WordPairDAO();
		wpList = new WordPairList();
		getWordPairList();
	}
	
	public WordPairList getWordPairList() {
		// TODO: refactor to avoid duplicate lists after first call to this method
		for(WordPair w : wpDAO.getWordPairs())
			wpList.add(w);
		return wpList;
	}
	
	public void add(WordPair word) {
		wpList.add(word);
		// TODO: persist in DB
	}
	
	public void delete(WordPair word) {
		// TODO
	}

	public List<WordPair> getWordPairs() {
		List<WordPair> wpl = new ArrayList<>();
		wpl.addAll(this.wpList.getAllExpressions());
		return wpl;
	}

}
