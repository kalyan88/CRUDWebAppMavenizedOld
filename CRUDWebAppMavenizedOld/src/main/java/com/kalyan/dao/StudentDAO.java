package com.kalyan.dao;

import java.util.List;

import com.kalyan.model.Student;

public interface StudentDAO {
	public void add(Student student);
	public void edit(Student student);
	public void delete(int studentId);
	public Student getStudent(int studentId);
	@SuppressWarnings("rawtypes")
	public List getAllStudent();
}