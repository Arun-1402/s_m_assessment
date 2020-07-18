package com.demo.service;

import com.demo.dao.UserDao;
import com.demo.model.Login;
import com.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceImpl implements UserService {

    @Autowired
    public UserDao userDao;

    public void register(User user) {
        userDao.register(user);
    }

    public User validateUser(Login login) {
        return userDao.validateUser(login);
    }

}
