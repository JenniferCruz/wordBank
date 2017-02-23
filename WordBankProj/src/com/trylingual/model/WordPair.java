package com.trylingual.model;

import java.util.ArrayList;
import java.util.List;

public class WordPair {

	private String left;
	private String right;
	private List<String> tags;
	private int id;
	
	public WordPair(String left) {
		this(left, "");
	}

	public WordPair(String left, String right) {
		this(left, right, new ArrayList<>());
	}
	
	public WordPair(String word, String pair, List<String> tags) {
		this.left = left;
		this.right = right;
		this.tags = tags;
	}

	public void changeWordTo(String left) {
		if (left != null)
			this.left = left;
	}

	public void changePairTo(String right) {
		if (right != null)
			this.right = right;
	}
	
	public void setID(int id) {
		this.id = id;
	}
	
	public void tag(String newTag) {
		this.tags.add(newTag);
	}
	
	public String getWord() {
		return this.left;
	}
	
	public String getPair() {
		return this.right;
	}
	
	public List<String> getTags() {
		if (this.tags.isEmpty())
			return new ArrayList<>();
		return this.tags.subList(0, this.tags.size() - 1);
	}
	
	@Override
	public String toString() {
		return "[id: " + this.id 
				+ " | word: " + this.left 
				+ " | translation: " + this.right + "]";
	}

	public int id() {
		return this.id;
	}
	
	public int getId() {
		return this.id();
	}

	@Override
	public boolean equals(Object other) {
		if (other == null)
			return false;
		if (!(other instanceof WordPair))
			return false;
		WordPair that = (WordPair) other;		
		if (!this.left.equals(that.left))
			return false;
		if (!this.right.equals(that.left))
			return false;
		if (!this.tags.equals(that.tags))
			return false;
		return true;
	}

	@Override
	public int hashCode() {
		// TODO: consider adding list values?
		return this.left.hashCode() + this.right.hashCode();
	}

}

