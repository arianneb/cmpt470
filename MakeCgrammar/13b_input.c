int main() 
{
    char vegetable;
    char favourite;
    printf("What's your favourite vegetable:\n");
    printf("a) Kale\n");
    printf("b) Cauliflower\n"); printf("c) Carrots\n"); printf("d) Potato\n");
    scanf("%c", &vegetable); switch(vegetable) {
        case 'a': favourite='a';break;
        case 'b': favourite='b';break;
        case 'c': favourite='c';break;
        case 'd': favourite='d';break;
        default: printf("Eat more vegetables"); }return 0;

}
