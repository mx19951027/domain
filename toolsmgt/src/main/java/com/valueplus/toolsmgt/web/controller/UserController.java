package com.valueplus.toolsmgt.web.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.valueplus.toolsmgt.service.UserService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.valueplus.toolsmgt.domain.User;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("user/")
public class UserController {
    private static Logger logger = Logger.getLogger(UserController.class);


    @ResponseBody
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public Object login(@ModelAttribute User user){
        logger.debug("+++++++++++++++++++++++++++++++++++++>>>>>>>>>>>");
        logger.debug(user);
        logger.debug("+++++++++++++++++++++++++++++++++++++>>>>>>>>>>>");
        Map<String, Integer> map = new HashMap<>();
        map.put("status", 1);
        return map;
    }
}
