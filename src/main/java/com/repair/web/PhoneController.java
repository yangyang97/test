package com.repair.web;

import com.repair.phonetype.entity.PhoneTypeEntity;
import net.sf.json.JSONObject;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/PhoneController")

public class PhoneController {
    @Autowired
    private SystemService systemService;
    /**
     * 手机页面列表 全系列
     *
     * @return
     */
    @RequestMapping(params = "PhoneList")
    public ModelAndView PhoneList(HttpServletRequest request) {
        //手机列表 类型 分页
        String page=request.getParameter("page");
        if(StringUtil.isEmpty(page)){
            page= String.valueOf(1);
        }
        int a= Integer.parseInt(page);
        //全部数据
         String Sql="SELECT * from phone_type ORDER BY ID Desc";
          List<Map<String,Object>> phonelist = this.systemService.findForJdbc(Sql,a,12);
          request.setAttribute("phonelist",phonelist);
          request.setAttribute("page",page);



        return new ModelAndView("com/pro");
    }
    /**
     * 手机页面列表 iphone 专区
     *
     * @return
     */
    @RequestMapping(params = "IPhone")
    public ModelAndView IPhone(HttpServletRequest request) {
        String page=request.getParameter("page");
        if(StringUtil.isEmpty(page)){
            page= String.valueOf(1);
        }
        int a= Integer.parseInt(page);
            String Sql="SELECT * from phone_type WHERE phone_fault = '1' ORDER BY ID Desc ";
            List<Map<String,Object>> phonelist = this.systemService.findForJdbc(Sql,a,12);
            request.setAttribute("phonelist",phonelist);
            request.setAttribute("size",page);

        return new ModelAndView("com/iPhonelist");
    }
    /**
     * 手机页面列表 MacBook 专区
     *
     * @return
     */
    @RequestMapping(params = "MacBook")
    public ModelAndView MacBook(HttpServletRequest request) {
        String page=request.getParameter("page");
        if(StringUtil.isEmpty(page)){
            page= String.valueOf(1);
        }
        int a= Integer.parseInt(page);
        String Sql="SELECT * from phone_type WHERE phone_fault = '2' ORDER BY ID Desc ";
        List<Map<String,Object>> phonelist = this.systemService.findForJdbc(Sql,a,12);
        request.setAttribute("phonelist",phonelist);
        request.setAttribute("size",page);
        return new ModelAndView("com/MacBookList");
    }

    /**
     * 跳转 详细修理页面
     *
     * @return
     */
    @RequestMapping(params = "Phonedetail")
    public ModelAndView Phonedetail(HttpServletRequest request) {
        //前段传回数据
        String id=request.getParameter("id");
        if(!StringUtil.isEmpty(id)){

            String Sql="SELECT * from phone_type where id= '"+id+"'  ";
            List<Map<String,Object>> phonelist = this.systemService.findForJdbc(Sql);
            request.setAttribute("phonelist",phonelist);

        }

        return new ModelAndView("com/sumit");

    }

    /**
     * 跳转 内存升级界面
     *
     * @return
     */
    @RequestMapping(params = "Memory")
    public ModelAndView Memory(HttpServletRequest request) {
        return new ModelAndView("com/Memory");
    }

    /**
     * 跳转 电池更换
     *
     * @return
     */
    @RequestMapping(params = "Battery")
    public ModelAndView Battery(HttpServletRequest request) {
        return new ModelAndView("com/Battery");
    }
    /**
     * 跳转 屏幕更换
     *
     * @return
     */
    @RequestMapping(params = "screen")
    public ModelAndView screen(HttpServletRequest request) {
        return new ModelAndView("com/screen");
    }
}
