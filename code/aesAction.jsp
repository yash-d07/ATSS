<%@page import = "java.util.Arrays"%>
<%@page import = "java.util.Base64"%>
<%@page import = "javax.crypto.Cipher"%>
<%@page import = "javax.crypto.spec.SecretKeySpec"%>
<%@page import = "javax.crypto.SecretKeyFactory"%>
<%@page import = "javax.crypto.spec.IvParameterSpec"%>
<%@page import = "javax.crypto.spec.PBEKeySpec"%>
<%@page import = "java.security.spec.KeySpec"%>
<%@page import = "javax.crypto.SecretKey"%>
<%@page import = "java.nio.charset.StandardCharsets"%>
<%
String message = request.getParameter("message");
String secret_key = request.getParameter("secret_key");
String salt = request.getParameter("salt");

/* Declaring a byte array */
byte[] iv = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};  
IvParameterSpec ivspec = new IvParameterSpec(iv);  

/* Creating secret keys factory*/
SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");  

KeySpec spec = new PBEKeySpec(secret_key.toCharArray(), salt.getBytes(), 65536, 256);  
SecretKey tmp = factory.generateSecret(spec);  
SecretKeySpec secretKey = new SecretKeySpec(tmp.getEncoded(), "AES");  
Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");  
cipher.init(Cipher.ENCRYPT_MODE, secretKey, ivspec);  

String output= Base64.getEncoder().encodeToString(cipher.doFinal(message.getBytes(StandardCharsets.UTF_8)));
out.println(output);
%>