package com.trylingual.app;

import com.trylingual.model.WordPair;
import com.trylingual.service.WordPairService;
import com.trylingual.service.WordPairServiceImpl;
import com.trylingual.view.ConsoleFormatter;
import com.trylingual.view.ConsoleOut;
import com.trylingual.view.Renderer;
import com.trylingual.view.ViewFormatter;

public class App {
	
	public static void main(String[] args) {
		// TODO: Make interfaces
		
		WordPairService wplService = new WordPairServiceImpl();
		
		// ADD A FEW WORDS
		wplService.add(new WordPair("Uncouth","tosco"));
		wplService.add(new WordPair("Bric-a-brac","baratijas"));
		wplService.add(new WordPair("Bleak","Sombrio"));
		
		// UPDATE A WORD
		WordPair[] words = wplService.list();
		
		words[4].changeWordTo("frog");
		words[4].changePairTo("sapo");
		wplService.update(words[4]);

		words[1].changePairTo("");
		wplService.update(words[1]);
		
		// DELETE A WORD
		WordPair deleted = words[8];
		wplService.delete(deleted.id());
		
		// SEND TO VIEW. It'll load some preloaded data also
		words = wplService.list();
		
		Renderer view = new ConsoleOut();
		ViewFormatter formatter = new ConsoleFormatter();
		
		view.render(formatter.format(words));
		
		System.out.println("\nDeleted word: " + deleted);
	}
	

}
