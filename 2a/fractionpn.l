%{
#include <stdio.h>
int posi=0, negi=0, posfrac=0, negfrac=0,invalid=0,zeroerror=0;
%}
%%
-[0-9]+\/[1-9]+ {negfrac++;}
-[0-9]+\/-[1-9]+ {posfrac++;}
-[0-9]+\.[1-9]+ {negfrac++;}
-[0-9]+ {negi++;}
[0-9]+\/[1-9]+ {posfrac++;}
[0-9]+\.[1-9]+ {posfrac++;}
[0-9]+ {posi++;}
[0-9]+\/[0]* {zeroerror++;}
.* {invalid++;}
%%
int main()
{
yylex();
printf("\n pos int %d , neg int %d, pos frac %d , neg frac %d, invalid=%d,zero error = %d",posi,negi,posfrac,negfrac,invalid,zeroerror);
}
