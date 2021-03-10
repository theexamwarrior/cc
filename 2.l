%{
#include<stdio.h>
%}

%%
"<"[^>]*> { printf("%s\n",yytext);}
.|\n  ;
%%
main(){
yylex();
}
