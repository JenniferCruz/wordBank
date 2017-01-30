package com.trylingual.model;

import java.util.ArrayList;
import java.util.List;

public class WordPairList {
	private List<WordPair> words;
	
	public WordPairList() {
		words = new ArrayList<>();
	}
	
	public void add(WordPair e) {
		words.add(e);
	}

	public void delete(WordPair e) {
		// TODO: This might not be working as intended
		words.remove(e);
	}

	public List<WordPair> getAllExpressions() {
		return words.subList(0, words.size());
	}
}
