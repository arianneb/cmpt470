 #include<stdio.h>
 #include<float.h>
 #include<inttypes.h>
 #include<math.h>
 #include<signal.h>

int main() {

	// A second test input program for CMPT480 Assignment 1
	

	unsigned int x = 12;
	const float y = 13.12;
	const char z = 'z';


	int a, b, c, d;

	a = 10;
	b = 20;
	c = x + a;
	d = x + b;

	int input;

	printf("%d is the 26th letter of the alphabet", z);
	
	for (a = b; a < 100; a++) {
		while (c < d) {
			printf("Winter is coming");
			c = x + 1;
			for (x = 1000; x > d; x--) {
				scanf("%d", &input);
				printf("You entered %d", input);
			}
		}
		
	}

	int zero = 0;
	printf("Pick an odd number between 1 and 7");
	scanf("%d", &input);
	if (input < 1 || input > 7) {
		printf("Your input value is out of range");
	} else {
		switch (input) {
			case 1:
				printf("Today you will make 1 new friend\n");
				break;
			case 3:
				printf("Today you will eat 3 meals\n");
				break;
			case 5:
				printf("Today you will lose 5 dollars\n");
				break;	
			case 7:
				printf("Today you walk 7 miles\n");
break;
			default:
				printf("You didn't enter an odd number\n"); }

	}	
			

			printf("Guten Tag, Welt!");
		while (x < 33) {
			x++;
		}

				for (int p = 1; p < 7; p++) {
		for (int q = 0; q < p; p++) {
	for (int r = 0; r < q; q++)
		printf("Triple nested for loop\n");
}}

while (x > 0) {
	if (x == 5)
		break;}



if (zero == 0) {


printf("This assignment is complete");

}


}
