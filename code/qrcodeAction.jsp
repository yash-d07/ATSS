<%@page import = "java.io.File"%>
<%@page import = "java.util.Map"%>
<%@page import = "java.util.HashMap"%>
<%@page import = "com.google.zxing.BarcodeFormat"%>
<%@page import = "com.google.zxing.EncodeHintType"%>
<%@page import = "com.google.zxing.MultiFormatWriter"%>
<%@page import = "com.google.zxing.client.j2se.MatrixToImageWriter"%>
<%@page import = "com.google.zxing.common.BitMatrix"%>
<%@page import = "com.google.zxing.qrcode.decoder.ErrorCorrectionLevel"%>

<% 
String text = request.getParameter("text");

String path="D:\\demo.png",charset="UTF-8";
int h=200,w=200;  
  
Map<EncodeHintType, ErrorCorrectionLevel> hashMap = new HashMap<EncodeHintType, ErrorCorrectionLevel>();  
hashMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);  

BitMatrix matrix = new MultiFormatWriter().encode(new String(text.getBytes(charset), charset), BarcodeFormat.QR_CODE, w, h);  
MatrixToImageWriter.writeToFile(matrix, path.substring(path.lastIndexOf('.') + 1), new File(path));  

out.println("QR Code created successfully");
%>