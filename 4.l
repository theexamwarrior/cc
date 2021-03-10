%{
int tc=0;
%}

%%
[a-zA-Z]* {printf("%d %s",++tc,yytext);}
[0-9]* {printf("%d %s",++tc,yytext);}
[^a-zA-Z0-9]* {printf("%d %s",++tc,yytext);}
%%

main(){
yylex();
}
