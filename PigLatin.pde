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
	if(sWord.substring(0,2).equals("qu")) 
		return -2; 
	for(int i = 0; i < sWord.length(); i++) { 
		if(sWord.substring(i, i+1).equals("a") || sWord.substring(i, i+1).equals("e") || sWord.substring(i, i+1).equals("i") || sWord.substring(i, i+1).equals("o") || sWord.substring(i, i+1).equals("u") || sWord.substring(i, i+1).equals("a"))  
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
	else if(findFirstVowel(sWord) == -2) 
	{ 
		return sWord.substring(2, sWord.length()) + "quay"; 
	}
	//else
	//{
	//	return "ERROR!";
//	}
	else if(findFirstVowel(sWord) == 0) 
	{ 
		return sWord + "way"; 
	} 
	//if(findFirstVowel(sWord) > 0)
	 else
	 { 
		return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay"; 
	}
}