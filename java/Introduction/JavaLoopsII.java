package Introduction;
import java.util.*;

class Solution{
    public static void main(String []argh){
        Scanner in = new Scanner(System.in);
        int t=in.nextInt();
        for(int j=0;j<t;j++){
            int a = in.nextInt();
            int b = in.nextInt();
            int n = in.nextInt();
            
            int ans = 0;
            
            for(int i=0; i<n; i++){
                if(i==0){
                    ans += a;
                }
                ans += Math.pow(2, i)*b;
                System.out.print(ans + " ");
            }
            System.out.println();
        }
        in.close();
    }
}