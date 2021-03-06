package com.dbms.coaching.dao;

import java.util.List;

import com.dbms.coaching.models.Subject;

public interface SubjectDao {
    public void save(Subject subject);

    public List<Subject> getAll();

    public Subject get(String subjectId);

    public Subject getBySubjectName(String subjectName);

    public List<Subject> getSubjectsInCourse(String courseId);

    public List<Subject> getSubjectsNotInCourse(String courseId);

    public List<String> getSubjectCodeByStudentId(int studentId);

    public String getSubjectCodeByTeacherId(int teacherId);

    public void update(Subject subject);

    public void delete(String subjectId);
}
