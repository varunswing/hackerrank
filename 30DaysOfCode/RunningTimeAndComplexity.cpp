#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int t;
    cin >> t;
    while(t--){
        int n;
        bool prime = true;
        cin >> n;
        if (n > 1) {
            for (int i = 2 ; i <= sqrt(n) ; i++) {
                if ( !(n % i) ) {
                    prime = false;
                    break;
                }
            }
        } else {
            prime = false;
        }
        if (prime) {
            cout << "Prime" << endl;
        } else {
            cout << "Not prime" << endl;
        }
    }
    return 0;
}