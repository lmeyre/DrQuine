#include <stdio.h>
/*
Goodbye World!
*/
void Bunny()
{
    char *str="#include <stdio.h>%c/*%cGoodbye World!%c*/%cvoid Bunny()%c{%c    char *str=%c%s%c;%c    printf(str, 10, 10, 10, 10, 10 , 10, 34, str, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c%cint main()%c{%c    /*%c    Hop%c    */%c    Bunny();%c    return (0);%c}";
    printf(str, 10, 10, 10, 10, 10 , 10, 34, str, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);
}

int main()
{
    /*
    Hop
    */
    Bunny();
    return (0);
}