package com.repair.web;

import org.jeecgframework.core.common.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("pcController")
public class indexController extends BaseController {

    /**
     * 主页跳转
     * */
    @RequestMapping(params = "index")
    public ModelAndView index(HttpServletRequest request) {

        return new ModelAndView("com/index");
    }


}
