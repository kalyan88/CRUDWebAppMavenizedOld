package com.kalyan.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.kalyan.model.Student;

@Component
public interface StudentService {

	public void add(Student student);
	public void edit(Student student);
	public void delete(int studentId);
	public Student getStudent(int studentId);
	@SuppressWarnings("rawtypes")
	public List getAllStudent();

}
