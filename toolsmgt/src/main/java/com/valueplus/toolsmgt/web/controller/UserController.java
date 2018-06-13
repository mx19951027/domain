package com.valueplus.toolsmgt.web.controller;

import com.valueplus.toolsmgt.web.domain.User;
import com.valueplus.toolsmgt.web.service.UserService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {
    private static Logger logger = LogManager.getLogger(UserController.class);

    @Autowired
    UserService userService;

/*    @RequestMapping(value = {"","login"}, method = RequestMethod.GET)
    public String toLogin() {
        return "index";
    }*/

/*    @RequestMapping(value = "index", method = RequestMethod.POST)
    public String login(User user, HttpSession session) {
        session.setAttribute("user",userService.login(user));
        return "index";
    }*/
}
