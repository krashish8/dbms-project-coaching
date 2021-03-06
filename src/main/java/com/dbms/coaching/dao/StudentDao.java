package com.dbms.coaching.dao;

import java.util.List;

import com.dbms.coaching.models.Student;

public interface StudentDao {
    public Student save(Student student);

    public List<Student> getAll();

    public List<Student> getAllByCourseId(String courseId);

    public Student get(int studentId);

    public Student getByUserId(int userId);

    public Integer getStudentIdByUserId(int userId);

    public void update(Student student);

    public void delete(int studentId);
}
