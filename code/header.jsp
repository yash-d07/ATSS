<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<style>
body {
  background-image: linear-gradient(to top, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('images/home.jpg');
  background-image: cover;
  height: 109vh;
  background-size: cover;
  background-position: center;
  position: relative;
}
</style>
    <br>
     <div class="icon">
        <h2 class="logo">
        <img src="images/logo.gif.gif" style= " padding-left:20px float: left padding-top: 10px" width=250px> 
        </h2>
        </div>
    <div class="navbar">   
            <a href="home.jsp">HOME<i class="fas fa-home"></i></a>
            <div class="dropdown">
  	  			<button class="dropbtn">BASIC OPERATIONS<i class="fa fa-caret-down"></i></button>
  	  			<div class="dropdown-content">
  	  				<a href="asciihex.jsp">ASCII to HEX</a>
  	  				<a href="asciibinary.jsp">ASCII to BINARY</a>
  	  				<a href="asciidecimal.jsp">ASCII to DECIMAL</a>
  	  				<a href="reversestring.jsp">REVERSE STRING</a>
  	  			</div>
  	  		</div>
  	  		<div class="dropdown">
  	  			<button class="dropbtn">CIPHER OPERATIONS<i class="fa fa-caret-down"></i></button>
  	  			<div class="dropdown-content">
  	  				<a href="ceasercipher.jsp">CAESAR CIPHER</a>
  	  				<a href="vigenerecipher.jsp">VIGENERE CIPHER</a>
  	  				<a href="affinecipher.jsp">AFFINE CIPHER</a>
  	  				<a href="rot13.jsp">ROT 13</a>
  	  			</div>
  	  		</div>
  	  		<div class="dropdown">
  	  			<button class="dropbtn">MODERN CRYPTOGRAPHY<i class="fa fa-caret-down"></i></button>
  	  			<div class="dropdown-content">
  	  				<a href="aes.jsp">ADVANCED ENCRYPTION STANDARD</a>
  	  				<a href="bruteforce.jsp">BRUTE FORCE</a>
  	  				<!-- <a href="rc4.jsp">RC4</a> -->
  	  				<a href="xor.jsp">XOR</a>
  	  				<a href="morsecode.jsp">MORSE CODE</a>
  	  			</div>
  	  		</div>
  	  		<div class="dropdown">
  	  			<button class="dropbtn">BASES & HASHES<i class="fa fa-caret-down"></i></button>
  	  			<div class="dropdown-content">
  	  				<a href="md5.jsp">MD5</a>
  	  				<a href="sha1.jsp">SHA1</a>
  	  				<a href="base16.jsp">BASE 16</a>
  	  				<a href="base32.jsp">BASE 32</a>
  	  				<a href="base64.jsp">BASE64</a>
  	  			</div>
  	  		</div>
  	  		<div class="dropdown">
  	  			<button class="dropbtn">MISCELLANEOUS<i class="fa fa-caret-down"></i></button>
  	  			<div class="dropdown-content">
  	  				<a href="urlencoding.jsp">URL ENCODING</a>
  	  				<a href="timestamp_conversion.jsp">UNIX Time Stamp to Date </a>
  	  				<a href="qrcode.jsp">QR CODE Generator</a>
  	  				<a href="hmac_algorithm.jsp">HMAC ALGORITHM</a>
  	  			</div>
  	  		</div>
           <a href="contactUs.jsp">CONTACT US<i class='fas fa-comment-alt'></i></a>
            <a href="about.jsp">ABOUT <i class="fa fa-address-book"></i></a>
         
      </div>
    </div>
    <br>
</body>
</html>