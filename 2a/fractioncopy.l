%{
#include <stdio.h>
int posi=0, negi=0, posfrac=0, negfrac=0,invalid=0;
%}
%%
-[0-9]+\/[0-9]+ {printf("\nits a Negative Fraction");negfrac++;}
-[0-9]+\/-[0-9]+ {printf("\nits a Positive Fraction");posfrac++;}
-[0-9]+\.[0-9]+ {printf("\nits a Negative Fraction");negfrac++;}
-[0-9]+ {printf("\n Negative Interger");negi++;}
[0-9]+\/[0-9]+ {printf("\nPositive Fraction ");posfrac++;}
[0-9]+\.[0-9]+ {printf("\nPositive Fraction ");posfrac++;}
[0-9]+ {printf("\nPositive Interger "); posi++;}
.* {printf("\n Invalid Format found yay");invalid++;}
%%
int main()
{
yylex();
printf("\n pos int %d , neg int %d, pos frac %d , neg frac %d, invalid=%d",posi,negi,posfrac,negfrac,invalid);
}
