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
     * 手机页面列表
     *
     * @return
     */
    @RequestMapping(params = "PhoneList")
    public ModelAndView PhoneList(HttpServletRequest request) {
        //前段传回数据
        String id=request.getParameter("id");

        if(StringUtil.isEmpty(id)){
            String Sql="SELECT * from phone_type ORDER BY ID Desc  LIMIT 0,8  ";
            List<Map<String,Object>> phonelist = this.systemService.findForJdbc(Sql);
            request.setAttribute("phonelist",phonelist);
        }

        return new ModelAndView("com/pro");
    }

}
