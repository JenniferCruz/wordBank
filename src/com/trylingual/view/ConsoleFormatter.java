package com.trylingual.view;

import java.util.ArrayList;
import java.util.List;

import com.trylingual.model.WordPair;

public class ConsoleFormatter {
	
	public List<String> format(WordPair[] words) {
		List<String> formattedWPs = new ArrayList<>();		
		for (int i = 0; i < words.length ; i++)
			formattedWPs.add(formatWordPair(words[i]));
		return formattedWPs;
	}

	private String formatWordPair(WordPair w) {
		String formattedWP = String.format("%-5s", w.id()) + "| ";
		formattedWP += String.format("%-15s", w.getWord());
		formattedWP += "| ";
		formattedWP += String.format("%-25s", w.getPair());
		formattedWP += formatWordPairTags(w.getTags());
		return formattedWP;
	}

	private String formatWordPairTags(List<String> wpTags) {
		String tags = "";
		if (wpTags.size() > 0)
			tags += "|";
		for (String t : wpTags) {
			tags += " " + t + " -";
		}
		if (tags.endsWith("-"))
			tags = tags.substring(0, tags.length() - 1);
		return tags;
	}

}
