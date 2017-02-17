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
		// TODO: don't use id property here
		
		WordPairService wordPairService = new WordPairServiceImpl();
		
		// ADD A FEW WORDS
		wordPairService.add(new WordPair("Uncouth","tosco"));
		wordPairService.add(new WordPair("Bric-a-brac","baratijas"));
		wordPairService.add(new WordPair("Bleak","Sombrio"));
//		
		// UPDATE A WORD
		WordPair[] words = wordPairService.list();
		
		words[4].changeWordTo("frog");
		words[4].changePairTo("sapo");
		wordPairService.update(words[4]);

		words[1].changePairTo("");
		wordPairService.update(words[1]);
		
		// DELETE A WORD
		WordPair deleted = words[8];
		wordPairService.delete(deleted.id());
		
		// SEND TO VIEW. It'll load some preloaded data also
		words = wordPairService.list();
		
		Renderer view = new ConsoleOut();
		ViewFormatter formatter = new ConsoleFormatter();
		
		view.render(formatter.format(words));
		
		System.out.println("\nDeleted word: " + deleted);
	}
	

}
