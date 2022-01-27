<%@page import = "java.util.Arrays"%>
<%
String input = request.getParameter("input");     

out.println(input);
String[] decimal = input.split(" ");
out.println(Arrays.toString(decimal));

Integer[] array=new Integer[decimal.length];
int i=0;
for (String str : decimal)
{
    array[i++] = Integer.parseInt(str);
}

for (i=0; i< array.length; i++)
{
	out.println(array[i]);
}

char[] array1=new char[array.length];

for (i = 0; i < array.length; i++) {
   // array1[i] = (char)array[i];
}
%>