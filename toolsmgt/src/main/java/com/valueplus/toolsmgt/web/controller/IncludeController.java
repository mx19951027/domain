package com.valueplus.toolsmgt.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/inc/")
public class IncludeController {
    @RequestMapping("main")
    String incMain() {
        return "inc/main";
    }

    @RequestMapping("tool_in_storage")
    String incTool_in_storage(Model model) {
        model.addAttribute("name", "wangzihao");
        return "inc/tool_in_storage";
    }
}
