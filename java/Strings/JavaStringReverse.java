package Strings;

import java.util.*;

public class JavaStringReverse {
    public static void main(String[] args) {
        
        Scanner sc=new Scanner(System.in);
        String A=sc.next();
        /* Enter your code here. Print output to STDOUT. */
        int l = A.length();
        sc.close();
        int flag = 0;
        if(l % 2 == 0){
            for(int i=0; i<l/2; i++){
                if(A.charAt(i) != A.charAt(l-i-1)){
                    flag = 1;
                    break;
                }
            }
        }else{
            for(int i=0; i<(l-1)/2; i++){
                if(A.charAt(i) != A.charAt(l-i-1)){
                    flag = 1;
                    break;
                }
            }
        }
        if(flag == 1){
            System.out.println("No");
        }else{
            System.out.println("Yes");
        }
        
    }
}
