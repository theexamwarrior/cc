%{
   	#include<stdio.h>
  	int lineno=1;
%}

%option noyywrap
%%
"/n" lineno++;
 int | float | char | if | else | break | switch | continue | case | while | do | for  {printf("%s keyword,length %d,lineno %d\n",yytext,yyleng,lineno);}
[a-zA-Z]([a-zA-Z|0-9])* {printf("%s identifier,length %d,lineno %d\n",yytext,yyleng,lineno);}
";" {printf("; SEMI");}
">=" {printf(">= GTE");}
"<>" {printf(">= NTE");}
"<" {printf(">= LT");}
"<=" {printf(">= LTE");}
">" {printf(">= GT");}
"{" 
"}" 
"(" {printf("LEFT PARAN");}
")" {printf("RIGHT PARAN");}
"++" {printf("UNARY PLUS");}
"__" {printf("UNARY MINUS");}
"+" {printf("%s plus", yytext);}
"_" {printf( " - MINUS");}
"*" {printf(" * mul");}
"%" {printf("%  mod");}
"/" {printf("/ divide");}
%%
main(int argc,char *argv[])
{
	FILE * fd;
	fd=fopen(argv[1],"r");
	yyin=fd;
	yylex();
	return 0;
}
