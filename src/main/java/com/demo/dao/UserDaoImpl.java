package com.demo.dao;

import com.demo.model.Login;
import com.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDaoImpl implements UserDao {

    @Autowired
    DataSource datasource;
    @Autowired
    JdbcTemplate jdbcTemplate;

    public void register(User user) {
        String sql = "insert into emp values(?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, new Object[]{user.getEmpId(), user.getPassword(), user.getFirstname(),
                user.getLastname(), user.getEmail(), user.getAddress(), user.getPhone()});
    }

    public User validateUser(Login login) {
        String sql = "select * from emp where empId='" + login.getEmpId() + "' and password='" + login.getPassword()
                + "'";
        List<User> users = jdbcTemplate.query(sql, new UserMapper());
        return users.size() > 0 ? users.get(0) : null;
    }
}

class UserMapper implements RowMapper<User> {
    public User mapRow(ResultSet rs, int arg1) throws SQLException {
        User user = new User();
        user.setEmpId(rs.getString("empId"));
        user.setPassword(rs.getString("password"));
        user.setFirstname(rs.getString("firstname"));
        user.setLastname(rs.getString("lastname"));
        user.setEmail(rs.getString("email"));
        user.setAddress(rs.getString("address"));
        user.setPhone(rs.getString("phone"));
        return user;
    }
}

