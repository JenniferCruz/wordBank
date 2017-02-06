package com.trylingual.app;

import com.trylingual.model.WordPair;
import com.trylingual.service.WordPairListService;
import com.trylingual.service.WordPairListServiceImpl;
import com.trylingual.view.ConsoleFormatter;
import com.trylingual.view.ConsoleOut;

public class App {
	
	public static void main(String[] args) {
		// TODO: Make interfaces
		
		WordPairListService wplService = new WordPairListServiceImpl();
		
		// ADD A FEW WORDS
		wplService.add(new WordPair("Uncouth","tosco"));
		wplService.add(new WordPair("Bric-a-brac","baratijas"));
		wplService.add(new WordPair("Bleak","Sombrio"));
		
		// UPDATE A WORD
		WordPair[] words = wplService.list();
		words[12].setPair("");
		words[14].setPair("");
		wplService.update(words[1]);
		wplService.update(words[2]);
		
		// DELETE A WORD
		WordPair deleted = words[8];
		wplService.delete(deleted.id());
		
		// SEND TO VIEW. It'll load some preloaded data also
		words = wplService.list();
		new ConsoleOut().render(new ConsoleFormatter().format(words));
		System.out.println("\nDeleted word: " + deleted);
	}
	

}
