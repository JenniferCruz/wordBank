package com.trylingual.view;

import java.util.List;

public class ConsoleOut {
	
	public void render(List<String> output) {
		System.out.println("Your WordBank contains the following words:");
		System.out.println();
		System.out.println("------------------------------------------------------------");
		System.out.println(String.format("%-14s %-1s %-24s %-1s %s", "Word", "|", "Translation", "|", "Tags"));
		System.out.println("------------------------------------------------------------");
		for (String s : output)
			System.out.println(s);
	}

}
