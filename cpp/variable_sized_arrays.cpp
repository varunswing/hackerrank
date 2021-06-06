#include <bits/stdc++.h>
using namespace std;


int main() {
    int n, q, l, k, size;

    cin >> n >> q;
    
    vector<vector<int>> v;
    vector<int> vi;

    for(int i=0; i<n; i++){
        cin >> size;
        vi.clear();
        for(int j=0; j<size; j++){
            int a;
            cin >> a;
            vi.push_back(a);
        }
        v.push_back(vi);
    }
    

    for(int i=0; i<q; i++){
        cin >> l >> k;
        cout << v[l][k] << endl;
    }
    
    return 0;
}
