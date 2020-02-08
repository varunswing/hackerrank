#include <bits/stdc++.h>

using namespace std;

/*
 * Complete the timeConversion function below.
 */
string timeConversion(string s) {
    if(s[8]=='P'){
        if(s[0] == '0' && s[1] <= '7'){
            s[0] = '1';
            s[1] = s[1]+2;
            s[8] = s[9] = ' ';
        }
        else if(s[0] == '0' && s[1] > '7' && s[1] <= '9'){
            s[0] = '2';
            s[1] = s[1]-8;
            s[8] = s[9] = ' ';
        }else if(s[0]=='1' && s[1]=='2'){
            s[8] = s[9] = ' ';
        }else if(s[0] == '1' && s[1]!= '2'){
            s[0] = '2';
            s[1] = s[1]+2;
            s[8] = s[9] = ' ';
        }
    }else if(s[8]=='A' && (s[0]=='1' && s[1]=='2')){
        s[0] = '0';
        s[1] = '0';
        s[8] = s[9] = ' ';
    }else{
        s[8] = s[9] = ' ';
    }
    return s;
}

int main()
{
    ofstream fout(getenv("OUTPUT_PATH"));

    string s;
    getline(cin, s);

    string result = timeConversion(s);

    fout << result << "\n";

    fout.close();

    return 0;
}
