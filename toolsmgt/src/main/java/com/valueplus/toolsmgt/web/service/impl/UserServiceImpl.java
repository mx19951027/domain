package com.valueplus.toolsmgt.web.service.impl;


import com.valueplus.toolsmgt.web.dao.UserDao;
import com.valueplus.toolsmgt.web.domain.User;
import com.valueplus.toolsmgt.web.service.UserService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    private static Logger logger = LogManager.getLogger(UserServiceImpl.class);
    @Autowired
    private UserDao userDao;

    @Override
    public User login(User user) {
        return userDao.login(user);
    }

}
