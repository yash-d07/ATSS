<%@include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/conversion.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Convert ASCII to ROT47 and vice-versa</title>
<style>
h2, h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<h2> ENCODING </h2>
		<form action="rot47Action.jsp" method="post">           
            <h3>Input Data:</h3>
            <input class="input-style" type="text" name="input" placeholder="Enter input text" required>
 			<hr>
 		    <h3> Conversion: </h3>
 		    <select name="conversion" id="conversion">
    			<option value="#">Select...</option>
    			<option value="ascii2rot47">ASCII to ROT47</option>
    			<option value="rot472ascii">ROT47 to ASCII </option>
    		</select>
    		<hr>
 			 
 			<button class="button" type="submit"> CONVERT <i class='far fa-arrow-alt-circle-right'></i></button></h2>  
    	</form>
	
	<h2> DECODING </h2>
		<form action="rot13decAction.jsp" method="post">           
            <h3>Input Data:</h3>
            <input class="input-style" type="text" name="input" placeholder="Enter input text" required>
 			<hr>
 		    <h3> Conversion: </h3>
 		    <select name="conversion" id="conversion">
 		    	<option value="#">Select...</option>
    			<option value="ascii2rot47">ASCII to ROT47</option>
    			<option value="rot472ascii">ROT47 to ASCII </option>
    		</select>
    		<hr>
 			 
 			<button class="button" type="submit"> CONVERT <i class='far fa-arrow-alt-circle-right'></i></button></h2>  
    	</form>
    	<br>
	 <div class="footer">
          <p>All Right Reserved @ FANTASTIC FOUR | ATSS Analyzer and Simplifier</p>
      </div>
	
</body>
</html>