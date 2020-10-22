package com.dbms.coaching.dao;

import java.util.List;
import java.util.Map;

import com.dbms.coaching.models.Course;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CourseDaoImpl implements CourseDao {
    @Autowired
    private JdbcTemplate template;

    @Override
    public void save(Course course) {
        String sql = "INSERT INTO Course (courseId, name, fee, description) VALUES (?, ?, ?, ?)";
        template.update(sql, course.getCourseId(), course.getName(), course.getFee(), course.getDescription());
    }

    @Override
    public List<Map<String, Object>> getAll() {
        String sql = "SELECT * FROM Course";
        List<Map<String, Object>> courses = template.queryForList(sql);
        return courses;
    }

    @Override
    public Course get(String courseId) {
        try {
            String sql = "SELECT * FROM Course WHERE courseId = ?";
            Course course = template.queryForObject(sql, new Object[] { courseId },
                    new BeanPropertyRowMapper<>(Course.class));
            return course;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    /**
     * Update all attributes except courseId
     */
    @Override
    public void update(Course course) {
        String sql = "UPDATE Course SET name = ?, description = ?, fee = ? WHERE courseId = ?";
        template.update(sql, course.getName(), course.getDescription(), course.getFee(), course.getCourseId());
    }

    @Override
    public void delete(String courseId) {
        String sql = "DELETE FROM Course WHERE courseId = ?";
        template.update(sql, courseId);
    }

}
