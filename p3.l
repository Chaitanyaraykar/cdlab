%{
#include<stdio.h>
int variables=0,keywords=0,operators=0;
%}
%%
"const"|"int"|"float"|"double" {keywords++;}
[a-zA-Z_][a-zA-Z0-9_]* {variables++;}
[+-=/\,.<>!$%^&*();:]  {operators++;}
[ \n] ;
%%
int yywrap(){}
int main()
{
	printf("Enter the string\n");
	yylex();
	printf("\nvariables=%d,keywords=%d,operators=%d\n",variables,keywords,operators);
}
