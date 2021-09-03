#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
int main()
{
char *str = "#include <stdio.h>%c#include <stdlib.h>%c#include <strings.h>%cint main()%c{%cchar *str = %c%s%c;%cchar buffer[30];%cint index = %d;%cif (index < 0) return (0);%cchar target_code[10];%cchar binary_name[10];%csprintf(target_code, %cSully_%%d.c%c, index);%csprintf(binary_name, %cSully_%%d%c, index);%cFILE *fd = fopen(target_code, %cw%c);%cfprintf(fd, str, 10, 10, 10, 10, 10, 34, str, 34, 10, 10, index-1, 10, 10, 10, 10, 34, 34, 10, 34, 34, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10);%cfclose(fd);%csprintf(buffer, %cclang -o %%s %%s%c, binary_name, target_code);%csystem(buffer);%cbzero(buffer, 30);%csprintf(buffer, %c./%%s%c, binary_name);%csystem(buffer);%creturn (0);%c}%c";
char buffer[30];
int index = 5;
if (index < 0) return (0);
char target_code[10];
char binary_name[10];
sprintf(target_code, "Sully_%d.c", index);
sprintf(binary_name, "Sully_%d", index);
FILE *fd = fopen(target_code, "w");
fprintf(fd, str, 10, 10, 10, 10, 10, 34, str, 34, 10, 10, index-1, 10, 10, 10, 10, 34, 34, 10, 34, 34, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10);
fclose(fd);
sprintf(buffer, "clang -o %s %s", binary_name, target_code);
system(buffer);
bzero(buffer, 30);
sprintf(buffer, "./%s", binary_name);
system(buffer);
return (0);
}
