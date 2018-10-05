#include<stdio.h>
#include<float.h>
#include<inttypes.h>
#include<math.h>
#include<signal.h>

/* 
 * This is a test program for CMPT470 Assignment 1
 */

int main() {
    
    int warm = 30;
    int avg = 15;
    int cold = 0;

    int temperature;
    
    printf("Please enter today's temperature: \n");
    scanf("%d", &temperature);

    if (temperature >= warm) { printf("It's hot outside, wear shorts.\n"); }
    
    
    if (temperature < warm && temperature > avg) {
        printf("It's moderate, dress light but bring a sweater.\n");
    }
    
    if (temperature < avg && temperature > cold) {
        printf("It's chilly, wear pants and bring a jacket.\n");
    } if (temperature < cold) {
        printf("Its freezing! Dress for winter.\n");
    }


    int number;
    printf("Please enter a number: \n");
    scanf("%d", &number);
    for (int i = 0; i < 10; i++) {
        printf("Have a great day!");
    } return 0;
    

}
