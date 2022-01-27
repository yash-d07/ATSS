<%@include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/conversion.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AFFINE CIPHER</title>
<style>
h2, h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<br><br><br><br>
	<h2> ENCRYPTION </h2><br>
		<form action="affinecipherAction.jsp" method="post">           
            <h3>Input Data:</h3> <br>
            <input class="input-style" type="text" name="input" placeholder="Enter input text" required>
            <center><br>
            <input class="input-style1" type="text" name="a" placeholder="Enter a" required>
            <input class="input-style1" type="text" name="b" placeholder="Enter b" required>
            </center><br>
            <h3> Conversion: </h3><br>
 		    <select name="conversion" id="conversion">
    			<option value="#">Select...</option>
    			<option value="ascii2affine">STRING to AFFINE CIPHER</option>
    			<option value="affine2ascii">AFFINE CIPHER to STRING</option>
    		</select>
 			 <br>
 			<button class="button" type="submit"> CONVERT <i class='far fa-arrow-alt-circle-right'></i></button></h2>  
    	</form>
	
	<h2> DECRYPTION </h2><br>
		<form action="affinecipherDecAction.jsp" method="post">           
            <h3>Input Data:</h3><br>
            <input class="input-style" type="text" name="input" placeholder="Enter input text" required>
 			<br>
 			<center><br>
            <input class="input-style1" type="text" name="a1" placeholder="Enter a" required>
            <input class="input-style1" type="text" name="b1" placeholder="Enter b" required>
            </center><br>
            <h3> Conversion: </h3><br>
 		    <select name="conversion" id="conversion">
 		    	<option value="#">Select...</option>
    			<option value="ascii2affine">STRING to AFFINE CIPHER</option>
    			<option value="affine2ascii">AFFINE CIPHER to STRING</option>
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