<%@page import = "java.io.FileInputStream"%>
<%@page import = "java.util.HashMap"%>  
<%@page import = "java.util.Map"%>  
<%@page import = "javax.imageio.ImageIO"%>  
<%@page import = "com.google.zxing.BinaryBitmap"%>  
<%@page import = "com.google.zxing.EncodeHintType"%>  
<%@page import = "com.google.zxing.MultiFormatReader"%>  
<%@page import = "com.google.zxing.Result"%>  
<%@page import = "com.google.zxing.client.j2se.BufferedImageLuminanceSource"%>  
<%@page import = "com.google.zxing.common.HybridBinarizer"%>  
<%@page import = "com.google.zxing.qrcode.decoder.ErrorCorrectionLevel"%>

<%
String path="D:\\demo.png",charset="UTF-8";
Map map;
Map<EncodeHintType, ErrorCorrectionLevel> hintMap = new HashMap<EncodeHintType, ErrorCorrectionLevel>();  
hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);

BinaryBitmap binaryBitmap = new BinaryBitmap(new HybridBinarizer(new BufferedImageLuminanceSource(ImageIO.read(new FileInputStream(path)))));  
Result rslt = new MultiFormatReader().decode(binaryBitmap);
out.println(rslt.getText());
%>