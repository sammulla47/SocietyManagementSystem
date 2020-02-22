<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.society.*"
    import="java.util.*"
    import="java.io.*" import="org.apache.commons.io.IOUtils"
	import="org.apache.commons.fileupload.*"
	import="org.apache.commons.fileupload.disk.*"
	import="org.apache.commons.fileupload.servlet.*"
	import="org.apache.commons.io.*"
	import="org.apache.poi.xssf.usermodel.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
</head>
<body>
<%

String SID="";
String SPass="";
String SocietyName="";
String Address="";
String City="";
int Pincode=0;
String EntryDate="";
int FlatT=0;
byte[] Image= null;
InputStream filecontent = null;
	
	
try {
	FileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	List items = null;
	items = upload.parseRequest(request);
	System.out.println("items :: "+items);
	Iterator iter = items.iterator();
	while (iter.hasNext()) {
		FileItem item = (FileItem) iter.next();

		if (item.isFormField()) {
			System.out.println("Inside If Item :: " + item);
			String name = item.getFieldName();
			System.out.println("name :: "+name);
			String value = item.getString();
			System.out.println("value :: "+value);
			if (name.equals("sId")) {
				SID = value;	
		      }else if(name.equals("spass")){
		    	  SPass = value;
		      }else if(name.equals("society")){
		    	  SocietyName = value;
		      }else if(name.equals("address")){
		    	  Address = value;
		      }else if(name.equals("city")){
		    	  City = value;
		      }else if(name.equals("pincode")){
		    	  Pincode = Integer.parseInt(value);
		      }else if(name.equals("entrydate")){
		    	  EntryDate = value;
		      }else if(name.equals("flatT")){
		    	  FlatT = Integer.parseInt(value);
		      }
			}
			else{
				System.out.println("Inside Else Item :: " + item);
				String fieldname = item.getFieldName();
				System.out.println("Fieldname :: " + fieldname);
				System.out.println("FilenameUtils.getName(item.getName()) :: "+ FilenameUtils.getName(item.getName()));
				String filename = FilenameUtils.getName(item.getName());
				System.out.println("Filename :: " + filename);
				filecontent = item.getInputStream();
				Image = new byte[(int) filecontent.available()];
				System.out.println("Image :: " + Image);
				filecontent.read(Image);
			}
	}
}

	catch (Exception e) {
		e.printStackTrace();
	}
			

SocietyRegistration sr=new SocietyRegistration();
sr.setSID(SID);
sr.setSPass(SPass);
sr.setSocietyName(SocietyName);
sr.setAddress(Address);
sr.setCity(City);
sr.setPincode(Pincode);
sr.setEntryDate(EntryDate);
sr.setFlatT(FlatT);
sr.setImage(Image);

String result=SocietyRegistrationWorker.addSocietyRegistration(sr);

if(result.equals(Results.SUCCESS))
{
	response.sendRedirect("successone.html");
}
else
{
	response.sendRedirect("failure.jsp");
}
%>
</body>
</html>