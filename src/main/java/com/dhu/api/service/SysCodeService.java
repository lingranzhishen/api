package com.dhu.api.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dhu.api.dao.SysCodeDao;
import com.dhu.api.model.SysCode;
import com.dhu.framework.cache.annotation.CheckCache;

@Service
public class SysCodeService {
	@Autowired
	SysCodeDao sysCodeDao;

	/**
	 * 查找hostCode映射关系
	 */
	@CheckCache(timeToLive = 60 * 60 * 4,cacheNull=false)
	public Map<String,Object> getHostMap(String type) {
		Map<String, Object> pMap = new HashMap<>();
		pMap.put("type",type);
		List<SysCode>sysCodes= sysCodeDao.getAllSysCodeByType(pMap);
		pMap.clear();
		for(SysCode code:sysCodes){
			pMap.put(code.getCode(), code.getValue());
		}
		return pMap;
	}
	
	/**
	 * 查找hostCode映射关系
	 */
	@CheckCache(timeToLive = 60 * 60 * 4,cacheNull=false)
	public List<SysCode> listSysCodeByType(String type) {
		Map<String, Object> pMap = new HashMap<>();
		pMap.put("type",type);
		return sysCodeDao.getAllSysCodeByType(pMap);
	}
	
	/**
	 * 查找hostCode映射关系
	 */
	@CheckCache(timeToLive = 60 * 60 * 4,cacheNull=false)
	public Map<String,String> getSysCodeNameMap() {
		Map<String, String> pMap = new HashMap<>();
		List<SysCode> codes=sysCodeDao.getAllSysCodeByType(null);
		for(SysCode c:codes){
			pMap.put(c.getCode()+"_"+c.getType(), c.getCodeName());
		}
		return pMap;
	}
}
