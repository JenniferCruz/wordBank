package com.trylingual.model;

import java.util.ArrayList;
import java.util.List;

public class WordPair {
	
	private String left;
	private String right;
	private List<String> tags;
	
	public WordPair(String left) {
		this(left, "");
	}

	public WordPair(String left, String right) {
		this.left = left;
		this.right = right;
		this.tags = new ArrayList<>();
	}

	public void setPair(String right) {
		if (right != null)
			this.right = right;
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
		return this.left + " -> " + this.right;
	}

}

