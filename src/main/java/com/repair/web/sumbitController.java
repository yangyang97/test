package com.repair.web;

import com.repair.phoneorder.entity.PhoneOrderEntity;
import net.sf.json.JSONObject;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
        //接收数据
        String data=request.getParameter("data");
        String submitTtpe=request.getParameter("submitTtpe");
        String type=request.getParameter("type");
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
        JSONObject object=JSONObject.fromObject(data);
        try{
            PhoneOrderEntity p=new PhoneOrderEntity();
            p.setOrderTime(date);
            p.setOrderName(submitTtpe);
            p.setOrderNamem(object.getString("pohoe"));
            if(type.equals("1")){
                p.setOrderType("内存升级");
            }
            if(type.equals("2")){
                p.setOrderType("电池更换");
            }
            if(type.equals("3")){
                p.setOrderType("屏幕更换");
            }
            p.setOrderTel(object.getString("num"));
            p.setOrderMemo(object.getString("province"));
            p.setOrderWay(object.getString("adl"));
            p.setOrderRemark(object.getString("remark"));
            this.systemService.saveOrUpdate(p);
        }catch(Exception e){

            e.printStackTrace();
            message = "提交失败";
            throw new BusinessException(e.getMessage());
        }
        return null;
    }
}
