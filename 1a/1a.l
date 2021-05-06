%{	#include<stdio.h>
	int words=1;
	int lines=1;
	int charact=0;
	int bspace=0;
%}

%%
\n {words++;lines++;}
[\t' '] {words++; bspace++;}
[a-zA-Z0-9] charact++;
[@] return 0;
. charact++;
%%
int yywrap(){}
int main(){
	printf("Enter paragraph\n");
	yylex();
	printf("No of words = %d\n",words);
	printf("No of lines = %d\n",lines);
	printf("No of charectors= %d\n",charact);
	printf("No of blank spaces = %d\n",bspace);
	return 0;
}
