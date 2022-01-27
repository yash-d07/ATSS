<%@include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/conversion.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>QR CODE</title>
<style>
h3, h2
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<br><br><br>
       <h2> GENERATING QR CODE </h2><br>
		<form action="qrcodeAction.jsp" method="post">           
            <h3>Input Data:</h3><br>
            <input class="input-style" type="text" name="text" placeholder="Enter input text" required>
            <br><br>
 			<button class="button" type="submit"> GENERATE <i class='far fa-arrow-alt-circle-right'></i></button></h2>  
    	</form>
    	<br>
    	<h2> READING QR CODE </h2><br>
		<form action="qrcodedecAction.jsp" method="post" enctype="multipart/form-data">           
            <h3>Upload File:</h3><br>
            <input class="input-style" type="file" name="fname">
            <br><br>
 			<button class="button" type="submit"> READ DATA <i class='far fa-arrow-alt-circle-right'></i></button></h2>  
    	</form>
	 <div class="footer">
          <p>All Right Reserved @ FANTASTIC FOUR | ATSS Analyzer and Simplifier</p>
      </div>
    	
</body>
</html>