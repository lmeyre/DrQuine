#include <stdio.h>
/*
Goodbye World!
*/
void Bunny()
{
    char *str="#include <stdio.h>%c/*%cGoodbye World!%c*/%cvoid Bunny()%c{%c%cchar *str=%c%s%c;%c%cprintf(str, 10, 10, 10, 10, 10 , 10, 9, 34, str, 34, 10, 9, 10, 10, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10);%c}%c%cint main()%c{%c%c/*%c%cHop%c%c*/%c%cBunny()%c%creturn (0)%c}";
    printf(str, 10, 10, 10, 10, 10 , 10, 9, 34, str, 34, 10, 9, 10, 10, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10);
}
int main()
{
    /*
    Hop
    */
    Bunny();
    return (0);
}