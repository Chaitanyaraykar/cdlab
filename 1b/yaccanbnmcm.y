%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
%}
%%
S:A B
|
;
A:'a'A'b'
|
;
B:'b'B'c'
|
;
%%

int main()
{
yyparse();
printf("\n Valid string\n");
}

int yyerror()
{
printf("INVALID!!!\N");
exit(0);
}
