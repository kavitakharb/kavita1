package com.library.daos;

import java.util.List;


import com.library.models.Student;

public interface StudentDao {

public boolean registerStudent(Student StudObj,String role);
public Student getUser(String email);
public boolean updateStudent(Student StudObj);
public boolean changePassword(String email,String newPassword);
public List<Student> getAllStudents();
public Student getStudentById(String email);
public boolean deleteStudent(String email);


}
