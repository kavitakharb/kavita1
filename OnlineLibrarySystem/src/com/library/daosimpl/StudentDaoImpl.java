package com.library.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.library.daos.StudentDao;
import com.library.models.Category;
import com.library.models.Student;
import com.library.utility.ConnectionProvider;

public class StudentDaoImpl implements StudentDao {

	@Override
	public boolean registerStudent(Student StudObj,String role) {
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("insert into studenttab values(?,?,?,?,?,?)");
			ps.setString(1,StudObj.getEmail());
			ps.setString(2,StudObj.getFirstName());
			ps.setString(3,StudObj.getLastName());
			ps.setString(4,StudObj.getGender());
			ps.setString(5,StudObj.getClassName());
			ps.setLong(6,StudObj.getMobileNo());
			
			/*Converting java.util.Date into java.sql.Date*/
			/*Date dateOfBirth=StudObj.getDateOfBirth();
			long l=dateOfBirth.getTime();
			java.sql.Date dob=new java.sql.Date(l);
			ps.setDate(5, dob);
			*/
			
			int i=ps.executeUpdate();
			if(i!=0){
				PreparedStatement p1=conn.prepareStatement("insert into login values(?,?,?)");
				p1.setString(1,StudObj.getEmail());
				p1.setString(2,StudObj.getPassword());
				p1.setString(3,role);
				int i1=p1.executeUpdate();
				if(i1!=0)
				{
				return true;
			}}
			else {
				return false;
			}}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public Student getUser(String email) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from studenttab where email=?");
			ps.setString(1,email);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
			  Student stud=new Student();
			  stud.setEmail(rs.getString(1));
			  stud.setFirstName(rs.getString(2));
			  stud.setLastName(rs.getString(3));
			  stud.setGender(rs.getString(4));
			  stud.setClassName(rs.getString(5));
			  stud.setMobileNo(rs.getLong(6));
			  /*String date=rs.getString(5);
			  
			  SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yy");
			  java.util.Date d=sdf.parse(date);
			  stud.setDateOfBirth(d);
			  */
			  return stud;		  
			  
			}
			
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return null;
	}

	@Override
	public boolean updateStudent(Student StudObj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("update studenttab set firstname=?,lastname=?,gender=?,classname=?,mobileno=?where email=?");
			ps.setString(1,StudObj.getFirstName());
			ps.setString(2,StudObj.getLastName());
			ps.setString(3,StudObj.getGender());
			ps.setString(4,StudObj.getClassName());
			ps.setLong(5,StudObj.getMobileNo());
			ps.setString(6,StudObj.getEmail());
						
			/*Date dateOfBirth=StudObj.getDateOfBirth();
			long l=dateOfBirth.getTime();
			java.sql.Date dob=new java.sql.Date(l);
			ps.setDate(4,dob);
			*/
			int i=ps.executeUpdate();
			if(i!=0){
				return true;
			}
		}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public boolean changePassword(String email, String newPassword) {
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("update login set Password=? where loginId=?");
			ps.setString(1,newPassword);
			ps.setString(2,email);
			int i=ps.executeUpdate();
			if(i!=0){
				
				return true;
				}
			else {
				return false;
			}
		}
			catch(Exception e){
				e.printStackTrace();
			}			
		return false;
	}

	@Override
	public List<Student> getAllStudents() {
		List<Student> students=new ArrayList<>();
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from studentTab");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				String email=rs.getString(1);
				String firstName=rs.getString(2);
				String lastName=rs.getString(3);
				String gender=rs.getString(4);
				String className=rs.getString(5);
				Long mobileNo=rs.getLong(6);
				
				Student sObj=new Student();
				sObj.setEmail(email);
				sObj.setFirstName(firstName);
				sObj.setLastName(lastName);
				sObj.setGender(gender);
				sObj.setClassName(className);
				sObj.setMobileNo(mobileNo);
				students.add(sObj);
				
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return students;
		
	}

	@Override
	public Student getStudentById(String email) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from studentTab where email=?");
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				String Email=rs.getString(1);
				String firstName=rs.getString(2);
				String lastName=rs.getString(3);
				String gender=rs.getString(4);
				String className=rs.getString(5);
				Long mobileNo=rs.getLong(6);
				
				Student sObj=new Student();
				sObj.setEmail(Email);
				sObj.setFirstName(firstName);
				sObj.setLastName(lastName);
				sObj.setGender(gender);
				sObj.setClassName(className);
				sObj.setMobileNo(mobileNo);
				return sObj;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return null;
	}

	@Override
	public boolean deleteStudent(String email) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("delete from studentTab where email=?");
			ps.setString(1,email);
			int i=ps.executeUpdate();
			if(i!=0)return true;
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}
}
