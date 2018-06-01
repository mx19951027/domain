package com.valueplus.toolsmgt.dao;

import com.valueplus.toolsmgt.domain.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    User login(@Param("username") String username);
}
