package com.valueplus.toolsmgt.service.impl;


import com.valueplus.toolsmgt.dao.UserDao;
import com.valueplus.toolsmgt.domain.User;
import com.valueplus.toolsmgt.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    private static Logger logger = Logger.getLogger(UserServiceImpl.class);
    @Autowired
    private UserDao userDao;

    @Override
    public User login(String username) {
        return userDao.login(username);
    }

}
