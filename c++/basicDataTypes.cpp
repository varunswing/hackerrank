#include <iostream>
#include <cstdio>
using namespace std;

int main() {

    int d;
    long ld;
    char c;
    float f;
    double l;

    scanf("%d %ld %c %f %lf", &d, &ld, &c, &f, &l);
    printf("%d \n%ld \n%c \n%0.3f \n%0.9lf", d, ld, c, f, l);

    return 0;
}

