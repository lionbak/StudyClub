package com.semiprj.model;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class User {
    private int userSeq;
    private String userEmail;
    private String userPw;
    private String userNickname;
    private String userAccessToken;
    private String userRefreshToken;
    private Date userDate;
}