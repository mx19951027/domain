package com.valueplus.toolsmgt.domain;

public class User {
    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String username) {
        userName = username;
    }

    @Override
    public String toString() {
        return "User{" +
                "userName='" + userName + '\'' +
                '}';
    }
}

