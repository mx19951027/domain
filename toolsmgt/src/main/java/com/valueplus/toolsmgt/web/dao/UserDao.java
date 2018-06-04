package com.valueplus.toolsmgt.web.dao;

import com.valueplus.toolsmgt.web.domain.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    User login(@Param("username") String username);
}
