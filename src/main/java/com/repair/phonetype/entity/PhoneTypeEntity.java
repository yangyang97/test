package com.repair.phonetype.entity;

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
 * @Description: 手机列表
 * @author onlineGenerator
 * @date 2019-03-15 17:06:04
 * @version V1.0   
 *
 */
@Entity
@Table(name = "phone_type", schema = "")
@SuppressWarnings("serial")
public class PhoneTypeEntity implements java.io.Serializable {
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
	/**手机名称*/
	@Excel(name="手机名称",width=15)
	private java.lang.String phoneName;
	/**手机颜色*/
	@Excel(name="手机颜色",width=15)
	private java.lang.String phoneColor;
	/**故障类型*/
	@Excel(name="故障类型",width=15)
	private java.lang.String phoneFault;
	/**预留字段*/
	@Excel(name="预留字段",width=15)
	private java.lang.String phoneMemo;
	/**维修价格*/
	@Excel(name="维修价格",width=15)
	private java.lang.String phoneMemory;
	/**手机照片*/
	@Excel(name="手机照片",width=15)
	private java.lang.String phonePhoto;
	
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
	 *@return: java.lang.String  手机名称
	 */

	@Column(name ="PHONE_NAME",nullable=true,length=32)
	public java.lang.String getPhoneName(){
		return this.phoneName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  手机名称
	 */
	public void setPhoneName(java.lang.String phoneName){
		this.phoneName = phoneName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  手机颜色
	 */

	@Column(name ="PHONE_COLOR",nullable=true,length=32)
	public java.lang.String getPhoneColor(){
		return this.phoneColor;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  手机颜色
	 */
	public void setPhoneColor(java.lang.String phoneColor){
		this.phoneColor = phoneColor;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  故障类型
	 */

	@Column(name ="PHONE_FAULT",nullable=true,length=32)
	public java.lang.String getPhoneFault(){
		return this.phoneFault;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  故障类型
	 */
	public void setPhoneFault(java.lang.String phoneFault){
		this.phoneFault = phoneFault;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  预留字段
	 */

	@Column(name ="PHONE_MEMO",nullable=true,length=32)
	public java.lang.String getPhoneMemo(){
		return this.phoneMemo;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  预留字段
	 */
	public void setPhoneMemo(java.lang.String phoneMemo){
		this.phoneMemo = phoneMemo;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  维修价格
	 */

	@Column(name ="PHONE_MEMORY",nullable=true,length=32)
	public java.lang.String getPhoneMemory(){
		return this.phoneMemory;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  维修价格
	 */
	public void setPhoneMemory(java.lang.String phoneMemory){
		this.phoneMemory = phoneMemory;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  手机照片
	 */

	@Column(name ="PHONE_PHOTO",nullable=true,length=32)
	public java.lang.String getPhonePhoto(){
		return this.phonePhoto;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  手机照片
	 */
	public void setPhonePhoto(java.lang.String phonePhoto){
		this.phonePhoto = phonePhoto;
	}
}