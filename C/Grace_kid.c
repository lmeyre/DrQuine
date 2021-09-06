#include <stdio.h>
#define STR "#include <stdio.h>%c#define STR %c%s%c%c#define FOX %cWhere is the bunny ?%c%c#define MAIN() int main(void){FILE *fd = fopen(%cGrace_kid.c%c, %cw%c); if (fd!=NULL){fprintf(fd, STR, 10, 34, STR, 34, 10, 34, 34, 10, 34, 34, 34, 34, 10, 10, 10, 10, 10);} return(0);}%cMAIN()%c/*%cCarrot%c*/%c"
#define FOX "Where is the bunny ?"
#define MAIN() int main(void){FILE *fd = fopen("Grace_kid.c", "w"); if (fd!=NULL){fprintf(fd, STR, 10, 34, STR, 34, 10, 34, 34, 10, 34, 34, 34, 34, 10, 10, 10, 10, 10);} return(0);}
MAIN()
/*
Carrot
*/
