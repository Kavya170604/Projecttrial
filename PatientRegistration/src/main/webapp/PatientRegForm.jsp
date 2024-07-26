<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Registration Form</title>
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
  background-color: skyblue;
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
  <form action="PatientController" enctype="multipart/form-data" method="post">
    <center>
      <h2>Patient Registration Form</h2>
      <table>
        <tr><td><b>Basic Information</b></td></tr>
        <tr><td>Patient Name</td><td><input type="text" name="pname"></td></tr>
        <tr><td>Address </td><td><input type="text" name="address"></td></tr>
        <tr><td>Gender</td><td><input type="radio" name="gender" value="Male">Male <input type="radio" name="gender" value="Female">Female <input type="radio" name="gender" value="Other">Other</td></tr>
        <tr><td>Prescription</td><td><input type="file" name="prescription"></td></tr>
        <hr>
        <tr><td><b>Appointment Information</b></td></tr>
        <tr><td>Required Appointment Date</td><td><input type="date" name="appointmentDate"></td></tr>
        <tr><td colspan="2"><input type="submit" value="Register"></td></tr>
        <hr>
      </table>
    </center>
  </form>
</div>
</body>
</html>
