package com.repair.topImgController.service;
import com.repair.topImgController.entity.TopImgControllerEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface TopImgControllerServiceI extends CommonService{
	
 	public void delete(TopImgControllerEntity entity) throws Exception;
 	
 	public Serializable save(TopImgControllerEntity entity) throws Exception;
 	
 	public void saveOrUpdate(TopImgControllerEntity entity) throws Exception;
 	
}
