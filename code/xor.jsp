<%@include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/conversion.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>XOR Operation</title>
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
		<form action="xorAction.jsp" method="post">           
            <h3>Input Data:</h3>
            <br>
            <input class="input-style" type="text" name="first" placeholder="Enter first number" required>
            <br><br>
            <input class="input-style" type="text" name="second" placeholder="Enter second number" required>
 			<br><br>
 			<button class="button" type="submit"> FIND <i class='far fa-arrow-alt-circle-right'></i></button></h2>
 			<br>  
    	</form>
	 <div class="footer">
          <p>All Right Reserved @ FANTASTIC FOUR | ATSS Analyzer and Simplifier</p>
</body>
</html>