package com.trylingual.service;

import java.util.ArrayList;
import java.util.List;

import com.trylingual.dao.WordPairDAO;
import com.trylingual.dao.WordPairDAOSql;
import com.trylingual.model.WordPair;
import com.trylingual.model.WordPairList;

public class WordPairServiceImpl implements WordPairService {
	
	private final WordPairDAO wpDAO;
	
	public WordPairServiceImpl() {
		wpDAO = new WordPairDAOSql();
	}

	@Override
	public WordPair[] list() {
		List<WordPair> words = wpDAO.list();
		WordPair[] wordPairs = new WordPair[words.size()];
		for(int i = 0; i < words.size(); i++)
			wordPairs[i] = words.get(i);
		return wordPairs;
	}

	@Override
	public void add(WordPair word) {
		wpDAO.save(word);		
	}

	@Override
	public void delete(int wID) {
		wpDAO.delete(wID);		
	}

	@Override
	public void update(WordPair word) {
		wpDAO.update(word);
	}

	@Override
	public WordPair getWordPair(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
