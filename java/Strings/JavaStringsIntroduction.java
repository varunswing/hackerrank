package Strings;

import java.util.*;

public class JavaStringsIntroduction {
    public static void main(String[] args) {
    
        Scanner sc=new Scanner(System.in);
        String A=sc.next();
        String B=sc.next();
        /* Enter your code here. Print output to STDOUT. */
        System.out.println(A.length() + B.length());
        
            if(A.compareTo(B)>0){
                System.out.println("Yes");
            }else{
                System.out.println("No");
            }
        
        System.out.println((A.toUpperCase()).charAt(0) + A.substring(1, A.length()) + " " + (B.toUpperCase()).charAt(0) + B.substring(1, B.length()));
        sc.close();
    }

}
