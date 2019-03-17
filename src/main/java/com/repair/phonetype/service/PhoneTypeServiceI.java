package com.repair.phonetype.service;
import com.repair.phonetype.entity.PhoneTypeEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface PhoneTypeServiceI extends CommonService{
	
 	public void delete(PhoneTypeEntity entity) throws Exception;
 	
 	public Serializable save(PhoneTypeEntity entity) throws Exception;
 	
 	public void saveOrUpdate(PhoneTypeEntity entity) throws Exception;
 	
}
