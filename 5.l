%{
#include<stdio.h>
int c=0;
%}
%%
[0-9]+ {c=fact(atoi(yytext));
printf("%d",c);
printf("%s",yytext);}
%%
main(){
yylex();}
int fact(int d){
if(d==1)
return 1;
else
return d*fact(d-1);
}
