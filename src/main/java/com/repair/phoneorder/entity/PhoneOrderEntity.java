package com.repair.phoneorder.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

/**   
 * @Title: Entity
 * @Description: 订单表
 * @author onlineGenerator
 * @date 2019-03-15 17:07:35
 * @version V1.0   
 *
 */
@Entity
@Table(name = "phone_order", schema = "")
@SuppressWarnings("serial")
public class PhoneOrderEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**创建人名称*/
	private java.lang.String createName;
	/**创建人登录名称*/
	private java.lang.String createBy;
	/**创建日期*/
	private java.util.Date createDate;
	/**更新人名称*/
	private java.lang.String updateName;
	/**更新人登录名称*/
	private java.lang.String updateBy;
	/**更新日期*/
	private java.util.Date updateDate;
	/**所属部门*/
	private java.lang.String sysOrgCode;
	/**所属公司*/
	private java.lang.String sysCompanyCode;
	/**流程状态*/
	private java.lang.String bpmStatus;
	/**订单手机名称*/
	@Excel(name="订单手机名称",width=15)
	private java.lang.String orderName;
	/**订单日期*/
	@Excel(name="订单日期",width=15,format = "yyyy-MM-dd HH:mm:ss")
	private java.util.Date orderTime;
	/**订单颜色*/
	@Excel(name="订单颜色",width=15)
	private java.lang.String orderColor;
	/**维修方式*/
	@Excel(name="维修方式",width=15)
	private java.lang.String orderWay;
	/**故障类型*/
	@Excel(name="故障类型",width=15)
	private java.lang.String orderType;
	/**预留信息*/
	@Excel(name="预留信息",width=15)
	private java.lang.String orderNamem;
	/**电话*/
	@Excel(name="电话",width=15)
	private java.lang.String orderTel;
	/**备注*/
	@Excel(name="备注",width=15)
	private java.lang.String orderRemark;
	/**预留*/
	@Excel(name="预留",width=15)
	private java.lang.String orderMemo;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")

	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人名称
	 */

	@Column(name ="CREATE_NAME",nullable=true,length=50)
	public java.lang.String getCreateName(){
		return this.createName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人名称
	 */
	public void setCreateName(java.lang.String createName){
		this.createName = createName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人登录名称
	 */

	@Column(name ="CREATE_BY",nullable=true,length=50)
	public java.lang.String getCreateBy(){
		return this.createBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人登录名称
	 */
	public void setCreateBy(java.lang.String createBy){
		this.createBy = createBy;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  创建日期
	 */

	@Column(name ="CREATE_DATE",nullable=true,length=20)
	public java.util.Date getCreateDate(){
		return this.createDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  创建日期
	 */
	public void setCreateDate(java.util.Date createDate){
		this.createDate = createDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人名称
	 */

	@Column(name ="UPDATE_NAME",nullable=true,length=50)
	public java.lang.String getUpdateName(){
		return this.updateName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人名称
	 */
	public void setUpdateName(java.lang.String updateName){
		this.updateName = updateName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人登录名称
	 */

	@Column(name ="UPDATE_BY",nullable=true,length=50)
	public java.lang.String getUpdateBy(){
		return this.updateBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人登录名称
	 */
	public void setUpdateBy(java.lang.String updateBy){
		this.updateBy = updateBy;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  更新日期
	 */

	@Column(name ="UPDATE_DATE",nullable=true,length=20)
	public java.util.Date getUpdateDate(){
		return this.updateDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  更新日期
	 */
	public void setUpdateDate(java.util.Date updateDate){
		this.updateDate = updateDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  所属部门
	 */

	@Column(name ="SYS_ORG_CODE",nullable=true,length=50)
	public java.lang.String getSysOrgCode(){
		return this.sysOrgCode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  所属部门
	 */
	public void setSysOrgCode(java.lang.String sysOrgCode){
		this.sysOrgCode = sysOrgCode;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  所属公司
	 */

	@Column(name ="SYS_COMPANY_CODE",nullable=true,length=50)
	public java.lang.String getSysCompanyCode(){
		return this.sysCompanyCode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  所属公司
	 */
	public void setSysCompanyCode(java.lang.String sysCompanyCode){
		this.sysCompanyCode = sysCompanyCode;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  流程状态
	 */

	@Column(name ="BPM_STATUS",nullable=true,length=32)
	public java.lang.String getBpmStatus(){
		return this.bpmStatus;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  流程状态
	 */
	public void setBpmStatus(java.lang.String bpmStatus){
		this.bpmStatus = bpmStatus;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  订单手机名称
	 */

	@Column(name ="ORDER_NAME",nullable=true,length=250)
	public java.lang.String getOrderName(){
		return this.orderName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  订单手机名称
	 */
	public void setOrderName(java.lang.String orderName){
		this.orderName = orderName;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  订单日期
	 */

	@Column(name ="ORDER_TIME",nullable=true,length=32)
	public java.util.Date getOrderTime(){
		return this.orderTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  订单日期
	 */
	public void setOrderTime(java.util.Date orderTime){
		this.orderTime = orderTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  订单颜色
	 */

	@Column(name ="ORDER_COLOR",nullable=true,length=100)
	public java.lang.String getOrderColor(){
		return this.orderColor;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  订单颜色
	 */
	public void setOrderColor(java.lang.String orderColor){
		this.orderColor = orderColor;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  维修方式
	 */

	@Column(name ="ORDER_WAY",nullable=true,length=100)
	public java.lang.String getOrderWay(){
		return this.orderWay;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  维修方式
	 */
	public void setOrderWay(java.lang.String orderWay){
		this.orderWay = orderWay;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  故障类型
	 */

	@Column(name ="ORDER_TYPE",nullable=true,length=32)
	public java.lang.String getOrderType(){
		return this.orderType;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  故障类型
	 */
	public void setOrderType(java.lang.String orderType){
		this.orderType = orderType;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  预留信息
	 */

	@Column(name ="ORDER_NAMEM",nullable=true,length=50)
	public java.lang.String getOrderNamem(){
		return this.orderNamem;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  预留信息
	 */
	public void setOrderNamem(java.lang.String orderNamem){
		this.orderNamem = orderNamem;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  电话
	 */

	@Column(name ="ORDER_TEL",nullable=true,length=50)
	public java.lang.String getOrderTel(){
		return this.orderTel;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  电话
	 */
	public void setOrderTel(java.lang.String orderTel){
		this.orderTel = orderTel;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  备注
	 */

	@Column(name ="ORDER_REMARK",nullable=true,length=1000)
	public java.lang.String getOrderRemark(){
		return this.orderRemark;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  备注
	 */
	public void setOrderRemark(java.lang.String orderRemark){
		this.orderRemark = orderRemark;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  预留
	 */

	@Column(name ="ORDER_MEMO",nullable=true,length=32)
	public java.lang.String getOrderMemo(){
		return this.orderMemo;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  预留
	 */
	public void setOrderMemo(java.lang.String orderMemo){
		this.orderMemo = orderMemo;
	}
}