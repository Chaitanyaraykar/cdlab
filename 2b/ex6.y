%{
#include <stdio.h>
%}
%token NUMBER ID
%left '*' '/'
%left '+' '-'
%%
E : T	 {printf("resultant  = %d\n", $$);return 0;}
T :	T '+' T { $$ = $1 + $3; }
	| T '-' T { $$ = $1 - $3; }
	| T '*' T { $$ = $1 * $3; }
	| T '/' T { $$ = $1 / $3; }
	| '-' NUMBER { $$ = -$2; }
	| '-' ID { $$ = -$2; }
	| '(' T ')' { $$ = $2; }
	| NUMBER { $$ = $1; }
	| ID { $$ = $1; };
%%

int main() {
	printf("Enter the expression\n");
	yyparse();
	return 0;
}

int yyerror(char* s) {
	printf("\nExpression is invalid\n");
}

