package com.repair.web;

import com.repair.phoneorder.entity.PhoneOrderEntity;
import net.sf.json.JSONObject;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/sumbitController")
public class sumbitController {

    @Autowired
    private SystemService systemService;

    /**
     * 常规 订单页面
     *
     * @return
     */
    @RequestMapping(params = "PhoneList")
    @ResponseBody
    public AjaxJson PhoneList(HttpServletRequest request) {
        String message = null;
        AjaxJson j = new AjaxJson();
        message = "已提交";
        j.setMsg(message);
        //接收数据 用户ID
        String id = request.getParameter("id");
        String data = request.getParameter("data");
        String submitTtpe = request.getParameter("submitTtpe");
        String type = request.getParameter("type");
        //获取当前时间
        Date date = new Date();//获取当前日期时间
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//创建一个日期格式.
        String now = format.format(date);//以格式处理date
        date = null;//清空date对象
        try {
            date = format.parse(now);//按格式逆转化now
        } catch (ParseException e) {
            e.printStackTrace();
        }

        //转化为JSONobject
        JSONObject object = JSONObject.fromObject(data);
        try {
            PhoneOrderEntity p = new PhoneOrderEntity();
            p.setOrderTime(date);
            p.setOrderName(submitTtpe);
            p.setOrderNamem(object.getString("pohoe"));
            if (type.equals("1")) {
                p.setOrderType("内存升级");
            }
            if (type.equals("2")) {
                p.setOrderType("电池更换");
            }
            if (type.equals("3")) {
                p.setOrderType("屏幕更换");
            }
            p.setOrderTel(object.getString("num"));
            p.setOrderMemo(object.getString("province"));
            p.setOrderWay(object.getString("adl"));
            p.setOrderRemark(object.getString("remark"));
            p.setOrderColor(object.getString("color"));
            p.setOrderID(id);
            this.systemService.saveOrUpdate(p);
        } catch (Exception e) {

            e.printStackTrace();
            message = "提交失败";
            j.setMsg(message);
            throw new BusinessException(e.getMessage());
        }
        return j;
    }

    /**
     * 类型 订单页面
     *
     * @return
     */
    @RequestMapping(params = "PhoneType")
    @ResponseBody
    public AjaxJson PhoneType(HttpServletRequest request,
                              @RequestParam(required = false, value = "data") String data,
                              @RequestParam(required = false, value = "id") String id
    ) {
        String message = null;
        AjaxJson j = new AjaxJson();
        message = "已提交";
        j.setMsg(message);
        //获取当前时间
        Date date = new Date();//获取当前日期时间
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//创建一个日期格式.
        String now = format.format(date);//以格式处理date
        date = null;//清空date对象
        try {
            date = format.parse(now);//按格式逆转化now
        } catch (ParseException e) {
            e.printStackTrace();
            message = "提交失败";
            j.setMsg(message);
        }
        //转化为JSONobject
        JSONObject object = JSONObject.fromObject(data);
        try {
            PhoneOrderEntity p = new PhoneOrderEntity();
            p.setOrderTime(date);
            p.setOrderTel(object.getString("num"));
            p.setOrderMemo(object.getString("province"));
            p.setOrderWay(object.getString("adl"));
            p.setOrderRemark(object.getString("remark"));
            p.setOrderColor(object.getString("color"));
            p.setOrderID(id);
        } catch (Exception e) {

            e.printStackTrace();
            message = "提交失败";
            j.setMsg(message);
            throw new BusinessException(e.getMessage());
        }
        return j;
    }
}
