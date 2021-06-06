#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */ 
    int n;
    cin >> n;
    vector<int> v;
    for(int i=0; i<n; i++){
        int a;
        cin >> a;
        v.push_back(a);
    }  
    int q;
    cin >> q;
    for(int i=0; i<q; i++){
        int a;
        cin >> a;
        vector<int>::iterator b = lower_bound(v.begin(), v.end(), a);
        if(v[b - v.begin()] == a){
            cout << "Yes" << " " << b - v.begin() + 1 << endl;
        }else{
            cout << "No" << " " << b - v.begin() + 1 << endl;
        }
    }
    return 0;
}
