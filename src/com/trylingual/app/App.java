package com.trylingual.app;

import java.util.List;

import com.trylingual.model.WordPair;
import com.trylingual.service.WordPairListService;
import com.trylingual.view.ConsoleFormatter;
import com.trylingual.view.ConsoleOut;

public class App {
	
	public static void main(String[] args) {
		
		WordPairListService wplService = new WordPairListService();
		
		// ADD A FEW WORDS
		wplService.add(new WordPair("Uncouth","tosco"));
		wplService.add(new WordPair("Bric-a-brac","baratijas"));
		wplService.add(new WordPair("Bleak","Sombrio"));
		
		// SEND TO VIEW. It'll load some preloaded data
		List<WordPair> words = wplService.getWordPairs();
		new ConsoleOut().render(new ConsoleFormatter().format(words));
	}
	

}
