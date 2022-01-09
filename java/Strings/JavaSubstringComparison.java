package Strings;

import java.util.Scanner;

public class JavaSubstringComparison {

    public static String getSmallestAndLargest(String s, int k) {
        String smallest = "";
        String largest = "";
        
        String temp = s.substring(0, k);
        smallest = temp;
        largest = temp;
        
        for(int i=1; i<=s.length()-k; i++){
            temp = s.substring(i, i+k);
            if(temp.compareTo(smallest) < 0){
                smallest = temp;
            }
            if(temp.compareTo(largest) > 0){
                largest = temp;
            }
        }
        
        // Complete the function
        // 'smallest' must be the lexicographically smallest substring of length 'k'
        // 'largest' must be the lexicographically largest substring of length 'k'
        
        return smallest + "\n" + largest;
    }


    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String s = scan.next();
        int k = scan.nextInt();
        scan.close();
      
        System.out.println(getSmallestAndLargest(s, k));
    }
}
