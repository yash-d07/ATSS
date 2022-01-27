<%@include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/conversion.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Convert ASCII to OCTAL and vice-versa</title>
<style>
h3, h2
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>  
	<br><br><br><br>
	<h2> ENCODING </h2><br>
		<form action="asciioctAction.jsp" method="post">           
            <h3>Input Data:</h3>
            <br>
            <input class="input-style" type="text" name="input" placeholder="Enter input text" required>
 		    <h3> Conversion: </h3><br>
 		    <select name="conversion" id="conversion">
    			<option value="#">Select...</option>
    			<option value="ascii2hex">ASCII to OCTAL numbers</option>
    			<option value="hex2ascii">OCTAL to ASCII numbers</option>
    		</select>
 			 <br>
 			<button class="button" type="submit"> CONVERT <i class='far fa-arrow-alt-circle-right'></i></button></h2>  
    	</form>
	
	<h2> DECODING </h2><br>
		<form action="octasciiAction.jsp" method="post">           
            <h3>Input Data:</h3><br>
            <input class="input-style" type="text" name="input" placeholder="Enter input text" required>
 			<br>
 		    <h3> Conversion: </h3><br>
 		    <select name="conversion" id="conversion">
 		    	<option value="#">Select...</option>
    			<option value="ascii2hex">ASCII to OCTAL numbers</option>
    			<option value="hex2ascii">OCTAL to ASCII numbers</option>
    		</select>
    		
 			 <br>
 			<button class="button" type="submit"> CONVERT <i class='far fa-arrow-alt-circle-right'></i></button></h2>  
    	</form>
    	<br>
	 <div class="footer">
          <p>All Right Reserved @ FANTASTIC FOUR | ATSS Analyzer and Simplifier</p>
      </div>	
</body>
</html>