#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <set>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int t;
    set<int> s;
    cin >> t;
    while(t--){
        int q;
        cin >> q;
        if(q == 1){
            int a;
            cin >> a;
            s.insert(a);
        }else if(q == 2){
            int a;
            cin >> a;
            s.erase(a);
        }else if(q == 3){
            int a;
            cin >> a;
            if(s.find(a) != s.end()){
                cout << "Yes"<< endl;
            }else{
                cout << "No" << endl;
            }
        }
    }
    return 0;
}



