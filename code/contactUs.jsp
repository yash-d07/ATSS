<%@page import="project.DBconnection" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/contactUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Contact Us</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Contact Us <i class='fas fa-comment-alt'></i></div>
<%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
<h3 style="text-align:center; color:yellow;">Message Has Been Sent Successfully. </h3>
<h3 style="text-align:center; color:yellow;">Our Team FANTASTIC FOUR will contact you soon!!</h3>
  <%} %>

<%
  if("invalid".equals(msg))
  {
  %>
<h3 style="text-align:center; ">Something Went Wrong. Please Try Again Later!! </h3>
  <%} %>
  <br><br><br><br>
  <form action="contactUsAction.jsp" method="post"> 
  <input class="input-style" type="text" name="Email" placeholder="Enter Email" required>
   <br><br>
   <input class="input-style" type="text" name="subject" placeholder="Enter Subject" required>
   <br><br>
   <textarea class="input-style" name="body" placeholder="Enter your Message" required></textarea>
   <br><br>
   <button class="button" type="submit"> SEND <i class="far fa-arrow-alt-circle-right"></i> </button>
  </form>
<br><br><br>

<div class="footer">
          <p>All Right Reserved @ FANTASTIC FOUR | ATSS Analyzer and Simplifier</p>
</div>
</body>
</html>