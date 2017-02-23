package com.trylingual.dao;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.trylingual.model.WordPair;

public class WordPairDAOFile implements WordPairDAO {
		
	public List<WordPair> getWordPairs(int listID) {
		/* Code adapted from 
		 * https://www.mkyong.com/java/how-to-read-and-parse-csv-file-in-java/
		 * */
		//String csvFile = "/home/jennifer/PROJECTS/workspaces/javarun/jwad1-wksp/WordBank/build/classes/com/trylingual/db.csv";
		String csvFile = "db.csv";
		BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        List<WordPair> wpList = new ArrayList<>();
        try {

            br = new BufferedReader(new FileReader(csvFile));
            while ((line = br.readLine()) != null) {
                String[] words = line.split(cvsSplitBy);
                
                String left = "";
                String right = "";
                
                if(words.length > 0)	left = words[0];
                if(words.length > 1)	right = words[1];
                
                WordPair w = new WordPair(left, right);
                
                for(int i = 2 ; i < words.length; i++) {
                	w.tag(words[i]);
                }

                wpList.add(w);
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }		
        /* -- end of mkyong code --*/
        return wpList;
	}

	@Override
	public List<WordPair> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(WordPair word) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(WordPair word) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int wID) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public WordPair get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
