%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
%}

%%

S:'a'E'b'
|
;
E:'a'E
|'a''a''a''a'
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

