package com.repair.repairuser.service;
import com.repair.repairuser.entity.RepairUserEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface RepairUserServiceI extends CommonService{
	
 	public void delete(RepairUserEntity entity) throws Exception;
 	
 	public Serializable save(RepairUserEntity entity) throws Exception;
 	
 	public void saveOrUpdate(RepairUserEntity entity) throws Exception;
 	
}
