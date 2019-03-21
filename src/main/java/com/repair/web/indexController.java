package com.repair.web;

import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("pcController")
public class indexController extends BaseController {

    @Autowired
    private SystemService systemService;
    /**
     * 主页跳转
     * */
    @RequestMapping(params = "index")
    public ModelAndView index(HttpServletRequest request) {

        return new ModelAndView("com/index");
    }

    /**
     * 关于我们
     * */
    @RequestMapping(params = "about")
    public ModelAndView about(HttpServletRequest request) {

        String sql=" SELECT * FROM news WHERE news_sour ='1' ORDER BY news_time DESC LIMIT 1 ";
        List<Map<String,Object>> AboutList=this.systemService.findForJdbc(sql);
        request.setAttribute("AboutList",AboutList);

        return new ModelAndView("com/about");
    }
    /**
     * 服务条款
     * */
    @RequestMapping(params = "server")
    public ModelAndView server(HttpServletRequest request) {

        String sql=" SELECT * FROM news WHERE news_sour ='2' ORDER BY news_time DESC LIMIT 1 ";
        List<Map<String,Object>> AboutList=this.systemService.findForJdbc(sql);
        request.setAttribute("AboutList",AboutList);

        return new ModelAndView("com/showpro");
    }
}
