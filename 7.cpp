#include<iostream>
//#include<conio.h>
using namespace std;
int p=0;

 int match(char c,char *s)
 {
    	p++;
    	if(c==s[p-1])
      		return 1;
    	else
      		return 0;
 }
 int E(char *s);

 int T(char *s)
 {
   	int i=0;
   	switch(s[p])
   	{
     		case '(':
	      		i=match('(',s) && E(s) && match(')',s);
//	      		cout<<"t"<<i<<endl;
	      		break;
     		case 'x':
	      		i=match('x',s);
	      		break;
   	}
  	cout<<i<<endl;
   	return i;
 }

int E(char * s)
 {
     int i=match('x',s) && match('+',s) && T(s);
     //cout<<i<<"\n";
     return i;
 }

int main()
{
     	char s[50]="x+(x+x)";
     	if(E(s))
       		cout<<"accepted";
     	else
       		cout<<"rejected";
     //	getch();
     return 0;
   }   
