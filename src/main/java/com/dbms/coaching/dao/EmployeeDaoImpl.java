package com.dbms.coaching.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.dbms.coaching.models.Employee;
import com.dbms.coaching.utils.PreparedStatementUtil;
import com.dbms.coaching.dao.rowmappers.EmployeeRowMapper;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {
    @Autowired
    private JdbcTemplate template;

    @Autowired
    private PreparedStatementUtil preparedStatementUtil;

    @Override
    public Employee save(Employee employee) {
        String sql = "INSERT INTO Employee (basicSalary, joinDate, endDate, panNumber, accountNumber, bankName, bankBranch, ifscCode, userId) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        KeyHolder keyHolder = new GeneratedKeyHolder();
        template.update(new PreparedStatementCreator(){
            @Override
            public PreparedStatement createPreparedStatement(Connection conn) throws SQLException {
                PreparedStatement preparedStatement = conn.prepareStatement(sql, new String[] {"employeeId"});
                preparedStatementUtil.setParameters(preparedStatement, employee.getBasicSalary(), employee.getJoinDate(),
                        employee.getEndDate(), employee.getPanNumber(), employee.getAccountNumber(), employee.getBankName(),
                        employee.getBankBranch(), employee.getIfscCode(), employee.getUser().getUserId());
                return preparedStatement;
            }
        }, keyHolder);
        int employeeId = keyHolder.getKey().intValue();
        employee.setEmployeeId(employeeId);
        return employee;
    }

    @Override
    public List<Employee> getAll() {
        String sql = "SELECT * FROM Employee NATURAL JOIN User";
        List<Employee> employees = template.query(sql, new EmployeeRowMapper());
        return employees;
    }

    @Override
    public Employee get(int employeeId) {
        try {
            String sql = "SELECT * FROM Employee NATURAL JOIN User WHERE employeeId = ?";
            return (Employee) template.queryForObject(sql, new Object[] { employeeId }, new EmployeeRowMapper());
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    /**
     * Update all attributes except employeeId and userId
     */
    @Override
    public void update(Employee employee) {
        String sql = "UPDATE Employee SET basicSalary = ?, joinDate = ?, endDate = ?, panNumber = ?, accountNumber = ?, bankName = ?, "
                + "bankBranch = ?, ifscCode = ? WHERE employeeId = ?";
        template.update(sql, employee.getBasicSalary(), employee.getJoinDate(), employee.getEndDate(),
                employee.getPanNumber(), employee.getAccountNumber(), employee.getBankName(), employee.getBankBranch(),
                employee.getIfscCode(), employee.getEmployeeId());
    }

    @Override
    public void delete(int employeeId) {
        String sql = "DELETE FROM Employee WHERE employeeId = ?";
        template.update(sql, employeeId);
    }

}
