#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */  
    int Day, Month, Year, Day1, Month1, Year1, mdiff, ddiff, ydiff, diff;
    
    cin>>Day>>Month>>Year>>Day1>>Month1>>Year1;

    mdiff = Month - Month1;
    ddiff = Day - Day1;
    ydiff = Year - Year1;

    diff=(ydiff>0)?10000:(mdiff>0&&ydiff==0)?mdiff*500:(ddiff>0 && ydiff==0)?ddiff*15:0;    
    
    cout<<diff<<endl;
    
    return 0;
}
