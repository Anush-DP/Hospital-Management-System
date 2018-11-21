<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>S.U.C.C.E.S.S</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String pswd=request.getParameter("pwd");
	String country=request.getParameter("country");
	String aadhar=request.getParameter("aadhar");
	String locality=request.getParameter("area");
	String street=request.getParameter("street");
	String pemail=request.getParameter("pemail");
	String pno=request.getParameter("pno");
	String state=request.getParameter("state");
	String Name=request.getParameter("Name");
	String name=request.getParameter("name");

	Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_database","root","1234"); 
Statement st= con.createStatement(); 
st.executeUpdate("update patients_info set name='"+name+"',country='"+country+"',state='"+state+"',email='"+pemail+"',password='"+pswd+"',street='"+street+"',locality='"+locality+"',aadhar="+aadhar+",contact_no="+pno+" where name='"+Name+"'"); 
try{
	st.executeUpdate("update apn_info set pname='"+name+"' where pname='"+Name+"'"); 

}catch(Exception e){

e.printStackTrace();
System.out.println("asasdf");
}

%>
<br>
<b><center>Success</center></b><br>
<center><a href="plogin.jsp">Back to login page</a></center><br>
<center><a href="/HospDBMS">Home</a></center><br>
</body>
</html>