%{
#include<stdio.h>
int prcnt=0,scancnt=0;
%}
%%
"printf" {prcnt++;fprintf(yyout,"writef");}
"scanf" {scancnt++;fprintf(yyout,"readf");}
%%
int yywrap(){}
int main()
{
    yyin = fopen("input.c","r");
    yyout = fopen("output.c","r+");
    yylex();
    printf("printf_count=%d\nscanf_count=%d",prcnt,scancnt);
}
