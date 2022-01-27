<%@include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/conversion.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Convert ASCII to MORSE CODE and vice-versa</title>
<style>
h2,h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<br><br><br><br>
	<h2> ENCODING </h2><br>
		<form action="morsecodeAction.jsp" method="post">           
            <h3>Input Data:</h3>
            <br>
            <input class="input-style" type="text" name="input" placeholder="Enter input text" required>
            <h3> Conversion: </h3><br>
 		    <select name="conversion" id="conversion">
    			<option value="#">Select...</option>
    			<option value="ascii2morse">ASCII to MORSE CODE</option>
    			<option value="morse2ascii">MORSE CODE to ASCII</option>
    		</select>
 			 <br>
 			<button class="button" type="submit"> CONVERT <i class='far fa-arrow-alt-circle-right'></i></button></h2>  
    	</form>
	
	<h2> DECODING </h2><br>
		<form action="morsecodedecAction.jsp" method="post">           
            <h3>Input Data:</h3><br>
            <input class="input-style" type="text" name="input" placeholder="Enter input text" required>
 			<br>
 			<h3> Conversion: </h3><br>
 		    <select name="conversion" id="conversion">
 		    	<option value="#">Select...</option>
    			<option value="ascii2morse">ASCII to MORSE CODE</option>
    			<option value="morse2ascii">MORSE CODE to ASCII</option>
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