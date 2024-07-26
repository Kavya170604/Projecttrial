<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.cont.Patient" %>
<%@ page import="com.cont.PatientDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  /* replace with your hospital image */
  background-size: cover;
  background-position: center;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;

}
.container {
  width: 40%;
  margin: 0 auto;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  display: flex;
  justify-content: center;
  align-items: center;
  height: 50vh;
}
</style>
</head>
<body>
<class name="container">
<%
String pgid = request.getParameter("page");
int pid = Integer.parseInt(pgid);
int id = pid;
int total = 5;
if (id == 1) {
    // No action needed
} else {
    id = id - 1;
    id = id * total + 1;
}

out.println("<h2> Page No: " + pid + "</h2>");
List<Patient> list = PatientDao.getRecords(id, total);
out.println("<table><tr><th>PID</th><th>Patient Name</th><th>Patient Address</th><th>Patient Gender</th></tr>");
for (Patient s : list) {
    out.println("<tr><td>" + s.getPid() + "</td><td>" + s.getPname() + "</td><td>" + s.getAddress() + "</td><td>" + s.getGender() +"</td></tr>");
}
out.println("</table>");
%>
<a href="View.jsp?page=1">1..</a>
<a href="View.jsp?page=2">2..</a>
<a href="View.jsp?page=3">3..</a>
</class>
</body>
</html>