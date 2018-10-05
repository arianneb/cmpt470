int main() {
    int fruit_bat, vampire_bat;
    scanf("%d",&fruit_bat); scanf("%d",&vampire_bat);
    if (fruit_bat <= 15 && vampire_bat >=15)
        printf("vampire_bat is fruit_bat's mother");
            else printf("fruit_bat is vampire_bat's mother");
                if (!(vampire_bat == fruit_bat) && !(fruit_bat ==0))
                printf("The bats are not related");return 0;
}
