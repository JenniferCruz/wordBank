package com.trylingual.view;

import java.util.List;

import com.trylingual.model.WordPair;

public interface ViewFormatter {

	List<String> format(WordPair[] words);

}