import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int i = 0; i < sWord.length(); i++){ 
		if(sWord(i, i+1).equals("a") || sWord(i, i+1).equals("e") || sWord(i, i+1).equals("i") || sWord(i, i+1).equals("o") || sWord(i, i+1).equals("u") || sWord(i, i+1).equals("a")) 
 			return i; 
	}
			return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else
	{
		return "ERROR!";
	}
	if(findFirstVowel(sWord) == 0) { 
		return sWord.substring(0, sWord.length()-2) + "w" + sWord.substring(sWord.length() - 2, sWord.length()); 
	}
	if(findFirstVowel(sWord) ? 0) { 
		return sWord.substring(findFirstVowel(sWord), sWord.length() - 2)) + sWord.substring(findFirstVowel(sWord) - 1, findFirstVowel(sWord) + 1) + sWord.substring(sWord.length() - 2, sWord.length()); 
	}
