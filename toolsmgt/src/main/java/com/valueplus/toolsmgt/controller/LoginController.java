package com.valueplus.toolsmgt.controller;

import com.valueplus.toolsmgt.domain.User;
import com.valueplus.toolsmgt.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes(value = {"user"}, types = {User.class})
public class LoginController {
    private static Logger logger = Logger.getLogger(LoginController.class);

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String toLogin() {
        return "redirect:login.jsp";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String doLogin(@RequestParam("username") String username, Model model) {
        User loginUser = userService.login(username);
        logger.debug("user------>" + loginUser);
        if (loginUser != null) {
            model.addAttribute("user", loginUser);
            return "index";
        }
        return "redirect:login";
    }
}
