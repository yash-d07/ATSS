<%@page import = "java.util.*"%>
<%@page import = "java.io.*"%>
<%
String str = request.getParameter("str");
String sub_str = request.getParameter("sub_str");
int position=-1;
		int len = str.length();
		int plen = sub_str.length();
		for(int i=0;i<len-plen;i++){
			int j=0;
			while((j < plen) && (str.charAt(i+j) == sub_str.charAt(j))){
				j++;
			}
			if(j == plen)
				position = i;
		}

		int endindex = position+1;
		if(position == -1){
			out.println("Pattern is not matched in the Input String.");
		}else{
			out.println("Found at position: " + (position+1));
			out.println("End at the position: " + (endindex + sub_str.length()));
		}
%>