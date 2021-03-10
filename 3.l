%{ 
#include<stdio.h> 
#include<string.h> 
int i = 0,c=0,l=0; 
%} 
  
word [^ \t\n]+
eol \n
%% 
{word} {i++, c+=yyleng;}
{eol} {l++;}
. {c++;} 
%% 
  
  
int main() 
{    
    // The function that starts the analysis 
    yylex(); 
    printf("%d%d%d",l,i,c);
  
    return 0; 
} 
