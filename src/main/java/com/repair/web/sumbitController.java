package com.repair.web;

import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/PhoneController")
public class sumbitController {
    /**
     * 内存升级
     *
     * @return
     */
    @RequestMapping(params = "PhoneList")
    @ResponseBody
    public AjaxJson PhoneList(HttpServletRequest request) {
        String message = null;
        AjaxJson j = new AjaxJson();
        message = "已提交";

        try{


        }catch(Exception e){

            e.printStackTrace();
            message = "提交失败";
            throw new BusinessException(e.getMessage());
        }
        return null;
    }
}
