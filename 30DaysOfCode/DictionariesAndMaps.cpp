#include<bits/stdc++.h>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */  
    
    int n;
    cin >> n;
    map<string, int> m;
    for(int i=0; i<n; i++){
        int a;
        string b;
        cin >> b >> a;
        m[b] = a;
    } 
    string d;
    while(cin >> d){
        if(m[d] != NULL){
            cout << d << "=" << m[d] << endl;
        }else{
            cout << "Not found" << endl;
        }
    }
    return 0;
}
