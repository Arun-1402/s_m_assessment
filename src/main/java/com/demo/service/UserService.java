package com.demo.service;

import com.demo.model.Login;
import com.demo.model.User;

public interface UserService {

    void register(User user);

    User validateUser(Login login);
}
