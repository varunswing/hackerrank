#include <bits/stdc++.h>

using namespace std;



int main()
{
    string S;
    getline(cin, S);
    // int a = atoi(S);
    try{
        int a = stoi(S);     
        cout << a << endl;
        
    }catch(exception e){
        cout << "Bad String" << endl;
    }
    return 0;
}
