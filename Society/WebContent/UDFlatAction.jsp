<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.society.*"
     import="java.util.*"
    import="java.io.*" import="org.apache.commons.io.IOUtils"
	import="org.apache.commons.fileupload.*"
	import="org.apache.commons.fileupload.disk.*"
	import="org.apache.commons.fileupload.servlet.*"
	import="org.apache.commons.io.*"
	import="org.apache.poi.xssf.usermodel.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<%
String action=request.getParameter("action");

if(action.equalsIgnoreCase("update"))
{
	int id=0;
	String society="";
	int flatId=0;
	String ownerName="";
	String phoneNumber="";
	String email="";
	byte[] images=null;
	InputStream filecontent = null;
	String entryDate="";
	String userId="";
	String userPassword="";
	String current="";

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
				if (name.equals(id)){
					id=Integer.parseInt(value);
				}
				else if (name.equals("society")) {
					society = value;	
			      }else if(name.equals("flatId")){
			    	  flatId = Integer.parseInt(value);
			      }else if(name.equals("ownerName")){
			    	  ownerName = value;
			      }else if(name.equals("phoneNumber")){
			    	  phoneNumber = value;
			      }else if(name.equals("email")){
			    	  email = value;
			      }else if(name.equals("entryDate")){
			    	  entryDate = value;
			      }else if(name.equals("userId")){
			    	  userId = value;
			      }else if(name.equals("userPassword")){
			    	  userPassword = value;
			      }else if(name.equals("current")){
			    	  current = value;
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
					images = new byte[(int) filecontent.available()];
					System.out.println("Image :: " + images);
					filecontent.read(images);
					
				}
		}
	}

		catch (Exception e) {
			e.printStackTrace();
		}


Flat fl=new Flat();
fl.setId(id);
fl.setSocietyName(society);
fl.setFlatId(flatId);
fl.setOwnerName(ownerName);
fl.setPhoneNumber(phoneNumber);
fl.setEmail(email);
fl.setImage(images);
fl.setEntryDate(entryDate);
fl.setUserId(userId);
fl.setUserPass(userPassword);
fl.setCurrent(current);


String result=FlatWorker.updateFlat(fl);

if(result.equals(Results.SUCCESS))
{
response.sendRedirect("success.jsp");
}
else
{
response.sendRedirect("failure.jsp");
}

}
else
{
int id=Integer.parseInt(request.getParameter("Id"));

Flat fl=new Flat();
fl.setId(id);

String result=FlatWorker.deleteFlat(fl);

if(result.equals(Results.SUCCESS))
{
response.sendRedirect("success.jsp");
}
else
{
response.sendRedirect("failure.jsp");
}
}
%>
</body>
</html>