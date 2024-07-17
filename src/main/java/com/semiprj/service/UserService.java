package com.semiprj.service;

import java.util.List;
import com.semiprj.model.User;

public interface UserService {

    public User svcUserLogin(User uvo);
    public boolean isUserValid(User uvo);
    public List<User> getAllUsers();
}