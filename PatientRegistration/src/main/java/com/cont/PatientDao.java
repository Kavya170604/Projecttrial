package com.cont;

	

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.ArrayList;
	import java.util.List;


public class PatientDao {

	    public static List<Patient> getRecords(int i, int t) {
	        i = i - 1;
	        String sql = "SELECT pname,address,gender,pid FROM patientdata LIMIT " + i + "," + t;

	        List<Patient> li = new ArrayList<Patient>();
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vsb", "root", "rootroot");
	            PreparedStatement pst = con.prepareStatement(sql);
	            ResultSet rs = pst.executeQuery();

	            while (rs.next()) {
	            	Patient s = new Patient();
	                 
	                s.setPname(rs.getString(1));
	                s.setAddress(rs.getString(2));
	                s.setGender(rs.getString(3));
	                
	                s.setPid(rs.getInt(4));
	                
	                li.add(s);
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	        return li;
	    }
	}

