package com.valueplus.toolsmgt.web.controller;

import com.valueplus.toolsmgt.web.domain.User;
import com.valueplus.toolsmgt.web.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("user/")
public class UserController {
    private static Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    UserService userService;
    @ResponseBody
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public Object login(@RequestBody User user) {
        User result = userService.login(user);
        System.out.print(result);
        Map<String, Integer> map = new HashMap<>();
        map.put("status", 1);
        return map;
    }
}
