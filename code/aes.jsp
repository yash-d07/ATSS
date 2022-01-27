<%@include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/conversion.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Advanced Encryption Standard (256 Bits)</title>
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
	<h2> ENCRYPTION </h2><br>
		<form action="aesAction.jsp" method="post">           
            <h3>Input Data:</h3>
            <br>
            <input class="input-style" type="text" name="message" placeholder="Enter message" required>
            <br><br>
            <input class="input-style" type="text" name="secret_key" placeholder="Enter secret key" required>
 			<br><br>
 			<input class="input-style" type="text" name="salt" placeholder="Enter salt value" required>
 			<br><br>
 			<button class="button" type="submit"> ENCRYPT <i class='far fa-arrow-alt-circle-right'></i></button></h2>
 			<br>  
    	</form>
    	
    	<h2> DECRYPTION </h2><br>
		<form action="aesDecAction.jsp" method="post">           
            <h3>Input Data:</h3>
            <br>
            <input class="input-style" type="text" name="message" placeholder="Enter message" required>
            <br><br>
            <input class="input-style" type="text" name="secret_key" placeholder="Enter secret key" required>
 			<br><br>
 			<input class="input-style" type="text" name="salt" placeholder="Enter salt value" required>
 			<br><br>
 			<button class="button" type="submit"> DECRYPT <i class='far fa-arrow-alt-circle-right'></i></button></h2>
 			<br>  
    	</form>
	 <div class="footer">
          <p>All Right Reserved @ FANTASTIC FOUR | ATSS Analyzer and Simplifier</p>
      </div>	 
</body>
</html>