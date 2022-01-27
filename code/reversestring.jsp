<%@include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/conversion.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reversing the Input String using Stack</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
	<br><br><br><br>
		<form action="reverseAction.jsp" method="post">           
            <h3>Input Data:</h3>
            <br>
            <input class="input-style" type="text" name="input" placeholder="Enter input text" required>
 		    <h3> Conversion: </h3><br>
 		    <select name="conversion" id="conversion">
    			<option value="reverse">Reversing the String</option>
    		</select>
 			 <br>
 			<button class="button" type="submit"> CONVERT <i class='far fa-arrow-alt-circle-right'></i></button></h2>  
    	</form>
		 
<div class="footer">
          <p>All Right Reserved @ FANTASTIC FOUR | ATSS Analyzer and Simplifier</p>
      </div>	
	
</body>
</html>