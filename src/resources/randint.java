package resources;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class randint{
	public static int rlevel(int min, int max) {
		int randomNum = ThreadLocalRandom.current().nextInt(min, max);
		return randomNum;
	}
	public static int rlevel1(int min, int max) {
		int randomNum = ThreadLocalRandom.current().nextInt(min, max);
		return randomNum*10;
	}
	public static double rlevel(double min, double max) {
		double randomNum = ThreadLocalRandom.current().nextDouble(min, max);
		return randomNum;
	}
	public static char[] generatePassword(int length) {
	      String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	      String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
	      String specialCharacters = "_";
	      String numbers = "1234567890";
	      String combinedChars = capitalCaseLetters + lowerCaseLetters + specialCharacters + numbers;
	      Random random = new Random();
	      char[] password = new char[length];

	      password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
	      password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
	      password[2] = specialCharacters.charAt(random.nextInt(specialCharacters.length()));
	      password[3] = numbers.charAt(random.nextInt(numbers.length()));
	   
	      for(int i = 4; i< length ; i++) {
	         password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
	      }
	      return password;
	   }
	
		  
	    // function to generate a random string of length n
	   public static String getAlphaNumericString(int n)
	    {
	  
	        // chose a Character random from this String
	        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	                                    + "0123456789"
	                                    + "abcdefghijklmnopqrstuvxyz";
	  
	        // create StringBuffer size of AlphaNumericString
	        StringBuilder sb = new StringBuilder(n);
	  
	        for (int i = 0; i < n; i++) {
	  
	            // generate a random number between
	            // 0 to AlphaNumericString variable length
	            int index
	                = (int)(AlphaNumericString.length()
	                        * Math.random());
	  
	            // add Character one by one in end of sb
	            sb.append(AlphaNumericString
	                          .charAt(index));
	        }
	  
	        return sb.toString();
	    }
	  
	
}