package com.repair.phoneorder.service;
import com.repair.phoneorder.entity.PhoneOrderEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface PhoneOrderServiceI extends CommonService{
	
 	public void delete(PhoneOrderEntity entity) throws Exception;
 	
 	public Serializable save(PhoneOrderEntity entity) throws Exception;
 	
 	public void saveOrUpdate(PhoneOrderEntity entity) throws Exception;
 	
}
