<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
  background-color:lightpink;
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
<div class="container">
<center>
<h2>Doctor Registration Form</h2>

<table>
<tr><td><b>Basic Information</b></td></tr>
<form action="DoctorController" enctype="multipart/form-data" method="post">
<tr><td>Doctor Name</td><td><input type="text" name="dname"></td></tr>
<tr><td>Address </td><td><input type="text" name="daddress"></td></tr>
<tr><td>Gender</td><td><input type="radio" name="dgender" value="Male">Male <input type="radio" name="dgender" value="Female">Female <input type="radio" name="dgender" value="Other">Other</td></tr>
<tr><td>Specialist</td><td><input type="text" name="specialist"></td></tr>
<tr><td>ContactNo</td><td><input type="text" name="contactno"></td></tr>

<tr><td colspan="2"><input type="submit" value="Register"></td></tr>
<hr>


</table>
</form>
</center>
</div>
</body>
</html>