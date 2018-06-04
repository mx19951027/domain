package com.valueplus.toolsmgt.web.controller;

import com.valueplus.toolsmgt.web.domain.User;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("user/")
public class UserController {
    private static Logger logger = Logger.getLogger(UserController.class);


    @ResponseBody
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public Object login(@ModelAttribute User user) {
        logger.debug("+++++++++++++++++++++++++++++++++++++>>>>>>>>>>>");
        logger.debug(user);
        logger.debug("+++++++++++++++++++++++++++++++++++++>>>>>>>>>>>");
        Map<String, Integer> map = new HashMap<>();
        map.put("status", 1);
        return map;
    }
}
