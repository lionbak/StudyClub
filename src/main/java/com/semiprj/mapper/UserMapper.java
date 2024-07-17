package com.semiprj.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.semiprj.model.User;

import java.util.List;

@Repository
@Mapper
public interface UserMapper {

    public User userLogin(User uvo);
    List<User> getAllUsers();
}