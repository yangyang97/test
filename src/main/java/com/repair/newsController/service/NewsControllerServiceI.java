package com.repair.newsController.service;
import com.repair.newsController.entity.NewsControllerEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface NewsControllerServiceI extends CommonService{
	
 	public void delete(NewsControllerEntity entity) throws Exception;
 	
 	public Serializable save(NewsControllerEntity entity) throws Exception;
 	
 	public void saveOrUpdate(NewsControllerEntity entity) throws Exception;
 	
}
