package com.demo.dao;

import com.demo.model.Login;
import com.demo.model.User;

public interface UserDao {

    void register(User user);

    User validateUser(Login login);
}
