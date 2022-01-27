<%@page import = "java.util.*"%>
<%@page import = "java.io.*"%>

<% 
String input = request.getParameter("input"); 
String k = request.getParameter("key");
int s[]=new int[256]; 
int k1[]=new int[256]; 
int temp=0; 
char ptextc[]=input.toCharArray(); 
char keyc[]=k.toCharArray(); 
int cipher[]=new int[input.length()]; 
int decrypt[]=new int[input.length()]; 
int ptexti[]=new int[input.length()]; 
int keyi[]=new int[k.length()]; 
for(int i=0;i<input.length();i++) 
{ 
ptexti[i]=(int)ptextc[i]; 
} 
for(int i=0;i<k.length();i++) 
{ 
keyi[i]=(int)keyc[i]; 
} 
for(int i=0;i<255;i++) 
{ 
s[i]=i; k1[i]=keyi[i%k.length()]; 
} 
int j=0; 
for(int i=0;i<255;i++) 
{ 
j=(j+s[i]+k1[i])%256; 
temp=s[i]; 
s[i]=s[j]; 
s[j]=temp; 
} 
int i=0; 
j=0; 
int z=0; 
for(int l=0;l<input.length();l++) 
{ 
i=(l+1)%256; 
j=(j+s[i])%256; 
temp=s[i]; 
s[i]=s[j]; 
s[j]=temp; 
z=s[(s[i]+s[j])%256]; 
cipher[l]=z^ptexti[l]; 
decrypt[l]=z^cipher[l]; 
} 


char convert[]=new char[cipher.length]; 
for(int l=0;l<cipher.length;l++) 
{
	convert[l]=(char)cipher[l]; 
out.println(convert[l]); 
} 
%>