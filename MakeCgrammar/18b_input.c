#include<stdio.h>
#include<math.h>
#include<fam.h>

int main() {
    int i;
    while(i < 10) {
        for (int j = 100; j >= 0; j--) {
            printf("Parsing is fun");
            i = i + 2;
        }
    }
    printf("The End");
}
