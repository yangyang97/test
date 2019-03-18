package com.repair.repairuser.controller;
import com.repair.repairuser.entity.RepairUserEntity;
import com.repair.repairuser.service.RepairUserServiceI;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeecgframework.core.util.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.exception.BusinessException;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.service.SystemService;

import java.io.OutputStream;
import org.jeecgframework.poi.excel.ExcelExportUtil;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.entity.vo.NormalExcelConstants;

import java.io.IOException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import java.util.Map;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Title: Controller
 * @Description: 用户表
 * @author onlineGenerator
 * @date 2019-03-17 13:46:28
 * @version V1.0
 *
 */
@Controller
@RequestMapping("/repairUserController")
public class RepairUserController extends BaseController {
	private static final Logger logger = LoggerFactory.getLogger(RepairUserController.class);

	@Autowired
	private RepairUserServiceI repairUserService;
	@Autowired
	private SystemService systemService;

	/**
	 * 登录
	 *
	 * @param request
	 * @param userName 用户名或手机号
	 * @param password 密码
	 * @return
	 */
	@RequestMapping(params = "login",produces = "application/json")
	@ResponseBody
	public Map<String,Object> login(
			HttpServletRequest request,
			@RequestParam(required = true,value = "userName") String userName,
			@RequestParam(required = true,value = "password") String password
	){
		HttpSession session = request.getSession();
		Map<String,Object> map = new HashMap<>();
		boolean resultSuccess = true;
		String resultMsg = "登录成功";

		List<Map<String,Object>> userList = systemService.findForJdbc("select id,user_name as userName,password from repair_user where user_name = '" + userName + "' or mobile = '" + userName + "'" );
		//用户存在
		if(userList.size() > 0) {
			String username = userList.get(0).get("userName").toString();
			String pwd = userList.get(0).get("password").toString();
			String inputPwd = PasswordUtil.encrypt(username, oConvertUtils.getString(password), PasswordUtil.getStaticSalt());
			String id = userList.get(0).get("id").toString();
			//比较密码
			if (!inputPwd.equals(pwd)) {
				resultSuccess = false;
				resultMsg = "密码错误";
			}else {
				//密码正确 将用户信息保存在session中
				RepairUserEntity repairUser = systemService.getEntity(RepairUserEntity.class,id);
				session.setAttribute("user",repairUser);
			}
		}else{
			resultSuccess = false;
			resultMsg = "用户不存在";
		}

		map.put("resultSuccess",resultSuccess);
		map.put("resultMsg",resultMsg);
		return map;
	}

	/**
	 * 注册
	 *
	 * @param request
	 * @param userName 用户名
	 * @param password 密码
	 * @param mobile 手机号
	 * @return
	 */
	@RequestMapping(params = "register",produces = "application/json")
	@ResponseBody
	public Map<String,Object> register(
			HttpServletRequest request,
			@RequestParam(required = true,value = "userName") String userName,
			@RequestParam(required = true,value = "password") String password,
			@RequestParam(required = true,value = "mobile") String mobile
	){
		Map<String,Object> map = new HashMap<>();
		boolean resultSuccess = true;
		String resultMsg = "注册成功";
		//查询用户名、手机号是否注册
		List<Map<String,Object>> userNameList = systemService.findForJdbc("select id from repair_user where user_name = '" + userName + "'");
		List<Map<String,Object>> mobileList = systemService.findForJdbc("select id from repair_user where mobile = '" + mobile + "'");
		//用户名已注册
		if(userNameList.size()>0){
			resultSuccess = false;
			resultMsg = "该用户名已注册";
			//手机号已注册
			if (mobileList.size() > 0){
				resultMsg = "用户名与手机号都已注册";
			}
		}else if (mobileList.size() > 0){
			resultSuccess = false;
			resultMsg = "该手机号已注册";
		}else{
			RepairUserEntity repairUser = new RepairUserEntity();
			repairUser.setUserName(userName);
			repairUser.setMobile(mobile);
			//密码加密
			repairUser.setPassword(PasswordUtil.encrypt(userName, oConvertUtils.getString(password), PasswordUtil.getStaticSalt()));
			try{
				repairUserService.save(repairUser);
			}catch (Exception e){
				resultSuccess = false;
				resultMsg = "注册失败";
			}
		}
		map.put("resultSuccess",resultSuccess);
		map.put("resultMsg",resultMsg);
		return map;
	}

	/**
	 * 修改密码
	 *
	 * @param request
	 * @param mobile 手机号
	 * @param password 密码
	 * @return
	 */
	@RequestMapping(params = "resetPwd",produces = "application/json")
	@ResponseBody
	public Map<String,Object> resetPwd(
			HttpServletRequest request,
			@RequestParam(required = true,value = "mobile") String mobile,
			@RequestParam(required = true,value = "password") String password
	){
		Map<String,Object> map = new HashMap<>();
		boolean resultSuccess = true;
		String resultMsg = "修改成功";

		HttpSession session = request.getSession();
		RepairUserEntity repairUser = (RepairUserEntity) session.getAttribute("user");
		//如果用户处于登录状态  清除session
		if(repairUser != null){
			session.removeAttribute("user");
		}
		List<Map<String,Object>> userList = systemService.findForJdbc("select id,user_name as userName from repair_user where mobile = '" + mobile + "'");
		//用户存在
		if(userList.size() > 0){
			String id = userList.get(0).get("id").toString();
			String userName = userList.get(0).get("userName").toString();
			RepairUserEntity repairUserEntity = systemService.getEntity(RepairUserEntity.class,id);
			//密码加密
			repairUserEntity.setPassword(PasswordUtil.encrypt(userName, oConvertUtils.getString(password), PasswordUtil.getStaticSalt()));
			try{
				repairUserService.saveOrUpdate(repairUserEntity);
			}catch (Exception e){
				resultSuccess = false;
				resultMsg = "修改密码失败";
			}
		}else{
			resultSuccess = false;
			resultMsg = "修改密码失败，用户不存在";
		}

		map.put("resultSuccess",resultSuccess);
		map.put("resultMsg",resultMsg);
		return map;
	}

	/**
	 * 退出登录
	 *
	 * @param request
	 * @return
	 */
	@RequestMapping(params = "logout")
	public AjaxJson logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		AjaxJson j = new AjaxJson();
		session.removeAttribute("user");
		return j;
	}

	/**
	 * 登录页面跳转
	 *
	 * @return
	 */
	@RequestMapping(params = "loginPage")
	public ModelAndView loginPage(){
		return new ModelAndView("com/login");
	}

	/**
	 * 修改密码页面跳转
	 *
	 * @return
	 */
	@RequestMapping(params = "resetPwdPage")
	public ModelAndView resetPwdPage(){
		return new ModelAndView("com/resetPwd");
	}

	/**
	 * 注册页面跳转
	 *
	 * @return
	 */
	@RequestMapping(params = "registerPage")
	public ModelAndView registerPage(){
		return new ModelAndView("com/register");
	}


	/**
	 * 用户表列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "list")
	public ModelAndView list(HttpServletRequest request) {
		return new ModelAndView("com/repair/repairuser/repairUserList");
	}

	/**
	 * easyui AJAX请求数据
	 * 
	 * @param request
	 * @param response
	 * @param dataGrid
	 * @param user
	 */

	@RequestMapping(params = "datagrid")
	public void datagrid(RepairUserEntity repairUser,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(RepairUserEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, repairUser, request.getParameterMap());
		try{
		//自定义追加查询条件
		
		}catch (Exception e) {
			throw new BusinessException(e.getMessage());
		}
		cq.add();
		this.repairUserService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}
	
	/**
	 * 删除用户表
	 * 
	 * @return
	 */
	@RequestMapping(params = "doDel")
	@ResponseBody
	public AjaxJson doDel(RepairUserEntity repairUser, HttpServletRequest request) {
		String message = null;
		AjaxJson j = new AjaxJson();
		repairUser = systemService.getEntity(RepairUserEntity.class, repairUser.getId());
		message = "用户表删除成功";
		try{
			repairUserService.delete(repairUser);
			systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "用户表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 批量删除用户表
	 * 
	 * @return
	 */
	 @RequestMapping(params = "doBatchDel")
	@ResponseBody
	public AjaxJson doBatchDel(String ids,HttpServletRequest request){
		String message = null;
		AjaxJson j = new AjaxJson();
		message = "用户表删除成功";
		try{
			for(String id:ids.split(",")){
				RepairUserEntity repairUser = systemService.getEntity(RepairUserEntity.class, 
				id
				);
				repairUserService.delete(repairUser);
				systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
			}
		}catch(Exception e){
			e.printStackTrace();
			message = "用户表删除失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加用户表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doAdd")
	@ResponseBody
	public AjaxJson doAdd(RepairUserEntity repairUser, HttpServletRequest request) {
		String message = null;
		AjaxJson j = new AjaxJson();
		message = "用户表添加成功";
		try{
			repairUserService.save(repairUser);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}catch(Exception e){
			e.printStackTrace();
			message = "用户表添加失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	
	/**
	 * 更新用户表
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "doUpdate")
	@ResponseBody
	public AjaxJson doUpdate(RepairUserEntity repairUser, HttpServletRequest request) {
		String message = null;
		AjaxJson j = new AjaxJson();
		message = "用户表更新成功";
		RepairUserEntity t = repairUserService.get(RepairUserEntity.class, repairUser.getId());
		try {
			MyBeanUtils.copyBeanNotNull2Bean(repairUser, t);
			repairUserService.saveOrUpdate(t);
			systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
		} catch (Exception e) {
			e.printStackTrace();
			message = "用户表更新失败";
			throw new BusinessException(e.getMessage());
		}
		j.setMsg(message);
		return j;
	}
	

	/**
	 * 用户表新增页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goAdd")
	public ModelAndView goAdd(RepairUserEntity repairUser, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(repairUser.getId())) {
			repairUser = repairUserService.getEntity(RepairUserEntity.class, repairUser.getId());
			req.setAttribute("repairUser", repairUser);
		}
		return new ModelAndView("com/repair/repairuser/repairUser-add");
	}
	/**
	 * 用户表编辑页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "goUpdate")
	public ModelAndView goUpdate(RepairUserEntity repairUser, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(repairUser.getId())) {
			repairUser = repairUserService.getEntity(RepairUserEntity.class, repairUser.getId());
			req.setAttribute("repairUser", repairUser);
		}
		return new ModelAndView("com/repair/repairuser/repairUser-update");
	}
	
	/**
	 * 导入功能跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "upload")
	public ModelAndView upload(HttpServletRequest req) {
		req.setAttribute("controller_name","repairUserController");
		return new ModelAndView("common/upload/pub_excel_upload");
	}
	
	/**
	 * 导出excel
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXls")
	public String exportXls(RepairUserEntity repairUser,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid,ModelMap modelMap) {
		CriteriaQuery cq = new CriteriaQuery(RepairUserEntity.class, dataGrid);
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, repairUser, request.getParameterMap());
		List<RepairUserEntity> repairUsers = this.repairUserService.getListByCriteriaQuery(cq,false);
		modelMap.put(NormalExcelConstants.FILE_NAME,"用户表");
		modelMap.put(NormalExcelConstants.CLASS,RepairUserEntity.class);
		modelMap.put(NormalExcelConstants.PARAMS,new ExportParams("用户表列表", "导出人:"+ResourceUtil.getSessionUser().getRealName(),
			"导出信息"));
		modelMap.put(NormalExcelConstants.DATA_LIST,repairUsers);
		return NormalExcelConstants.JEECG_EXCEL_VIEW;
	}
	/**
	 * 导出excel 使模板
	 * 
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "exportXlsByT")
	public String exportXlsByT(RepairUserEntity repairUser,HttpServletRequest request,HttpServletResponse response
			, DataGrid dataGrid,ModelMap modelMap) {
    	modelMap.put(NormalExcelConstants.FILE_NAME,"用户表");
    	modelMap.put(NormalExcelConstants.CLASS,RepairUserEntity.class);
    	modelMap.put(NormalExcelConstants.PARAMS,new ExportParams("用户表列表", "导出人:"+ResourceUtil.getSessionUser().getRealName(),
    	"导出信息"));
    	modelMap.put(NormalExcelConstants.DATA_LIST,new ArrayList());
    	return NormalExcelConstants.JEECG_EXCEL_VIEW;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(params = "importExcel", method = RequestMethod.POST)
	@ResponseBody
	public AjaxJson importExcel(HttpServletRequest request, HttpServletResponse response) {
		AjaxJson j = new AjaxJson();
		
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
			MultipartFile file = entity.getValue();// 获取上传文件对象
			ImportParams params = new ImportParams();
			params.setTitleRows(2);
			params.setHeadRows(1);
			params.setNeedSave(true);
			try {
				List<RepairUserEntity> listRepairUserEntitys = ExcelImportUtil.importExcel(file.getInputStream(),RepairUserEntity.class,params);
				for (RepairUserEntity repairUser : listRepairUserEntitys) {
					repairUserService.save(repairUser);
				}
				j.setMsg("文件导入成功！");
			} catch (Exception e) {
				j.setMsg("文件导入失败！");
				logger.error(ExceptionUtil.getExceptionMessage(e));
			}finally{
				try {
					file.getInputStream().close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return j;
	}
	
	
}
