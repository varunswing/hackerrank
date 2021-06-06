#include <bits/stdc++.h>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int q;
    cin >> q;
    map<string, int> m;
    while(q--){
        int a;
        cin >> a;
        if(a == 1){
            string x;
            int y;
            cin >> x >> y;
            m[x] += y;
        }else if(a==2){
            string x;
            cin >> x;
            m.erase(x);
        }else if(a==3){
            string x;
            cin >> x;
            cout << m[x] << endl;
        }
    }
    return 0;
}
