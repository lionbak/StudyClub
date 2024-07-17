package com.semiprj.service;

import com.semiprj.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.semiprj.mapper.UserMapper;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;


    @Override
    public User svcUserLogin(User uvo) {
        System.out.println("Login 성공");
        return userMapper.userLogin(uvo);
    }

    public boolean isUserValid(User uvo) {
        User user = userMapper.userLogin(uvo);
        if(user == null){
            System.out.println("user is null.");
        }
        return user != null;
    }

    public List<User> getAllUsers() {
        return userMapper.getAllUsers();
    }
}