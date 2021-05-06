%{
#include <stdio.h>
#include <stdlib.h>
%}

%token NUM
%left '*' '/'
%left '+' '-'
%%
E:T	 {printf("resultant  = %d\n", $$);return 0;}
T:T'+'T { $$ = $1 + $3; }
|T'-'T { $$ = $1 - $3; }
|T'*'T { $$ = $1 * $3; }
|T'/'T { $$ = $1 / $3; }
|'-'NUM { $$ = -$2; }
|'('T')' { $$ = $2; }
|NUM { $$ = $1; }
;
%%

int main() {
	printf("Enter the expression\n");
	yyparse();
	return 0;
}

int yyerror(char* s) {
	printf("\nExpression is invalid\n");
}

