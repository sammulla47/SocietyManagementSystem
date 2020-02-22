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

String Society="";
int FlatId=0;
String OwnerName="";
String PhoneNumber="";
String Email="";

String EntryDate="";
String UserId="";
String UserPassword="";
String Current="";
byte[] Images=null;
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
			if (name.equals("society")) {
				Society = value;	
		      }else if(name.equals("flatid")){
		    	  FlatId = Integer.parseInt(value);
		      }else if(name.equals("owner")){
		    	  OwnerName = value;
		      }else if(name.equals("phone")){
		    	  PhoneNumber = value;
		      }else if(name.equals("email")){
		    	  Email = value;
		      }else if(name.equals("entry")){
		    	  EntryDate = value;
		      }else if(name.equals("userId")){
		    	  UserId = value;
		      }else if(name.equals("userPass")){
		    	  UserPassword = value;
		      }else if(name.equals("current")){
		    	  Current = value;
		      }
			}
			else {
				System.out.println("Inside Else Item :: " + item);
				String fieldname = item.getFieldName();
				System.out.println("Fieldname :: " + fieldname);
				System.out.println("FilenameUtils.getName(item.getName()) :: "+ FilenameUtils.getName(item.getName()));
				String filename = FilenameUtils.getName(item.getName());
				System.out.println("Filename :: " + filename);
				filecontent = item.getInputStream();
				Images = new byte[(int) filecontent.available()];
				System.out.println("Images :: " + Images);
				
			}
	}
}

	catch (Exception e) {
		e.printStackTrace();
	}

Flat fl=new Flat();
fl.setSocietyName(Society);
fl.setFlatId(FlatId);
fl.setOwnerName(OwnerName);
fl.setPhoneNumber(PhoneNumber);
fl.setEmail(Email);
fl.setEntryDate(EntryDate);
fl.setUserId(UserId);
fl.setUserPass(UserPassword);
fl.setCurrent(Current);
fl.setImage(Images);

String result=FlatWorker.addFlat(fl);

if(result.equals(Results.SUCCESS))
{
	response.sendRedirect("success.jsp");
}
else
{
	response.sendRedirect("failure.jsp");
}
%>
</body>
</html>