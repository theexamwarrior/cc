#include<stdio.h>
#include<string.h>

void main()
{
int i,j,k,l,n=1;
char a[20];
printf("enter production:\n");
gets(a);
l=strlen(a);
for(i=3;i<=l;i++)
{
     for(j=i+1;j<=l;j++)
     {
for(k=65;k<=90;k++)
{
      if(a[i]==k)
 			{
   if(a[j]==a[i])
   n++;
}
}
 	    }
}
if(n>1)
printf("Ambiguity");
else
printf("No Ambiguity");
}

