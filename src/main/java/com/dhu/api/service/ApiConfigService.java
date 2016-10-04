package com.dhu.api.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dhu.api.dao.ApiConfigDao;
import com.dhu.api.model.ApiConfig;
import com.dhu.framework.cache.annotation.CheckCache;
import com.dhu.framework.cache.annotation.EvictCache;

@Service
public class ApiConfigService {
	@Autowired
	ApiConfigDao apiConfigDao;

	/**
	 * 查找api
	 */
	@CheckCache(timeToLive = 60 * 60 * 4, cacheNull = false)
	public ApiConfig getApiConfigByParams(String versionCode, String hostCode, String apiPath) {
		Map<String, Object> pMap = new HashMap<>();
		pMap.put("versionCode", versionCode);
		pMap.put("hostCode", hostCode);
		pMap.put("apiPath", apiPath);
		return apiConfigDao.getApiConfigByParams(pMap);
	}

	/**
	 * 查找api
	 */
	@CheckCache(timeToLive = 60 * 60 * 4, cacheNull = false)
	public List<ApiConfig> listApiConfigByParams(String versionCode) {
		Map<String, Object> pMap = new HashMap<>();
		pMap.put("versionCode", versionCode);
		return apiConfigDao.listApiConfigByParams(pMap);
	}

	/**
	 * 查找api
	 */
	@CheckCache(timeToLive = 60 * 60 * 4, cacheNull = false)
	public ApiConfig getApiConfigById(Long id) {
		return apiConfigDao.getApiConfigById(id);
	}

	@EvictCache(key="'ApiConfigService.listApiConfigByParams_'+#apiConfig.getVersionCode()")
	public void addApiConfig(ApiConfig apiConfig) {
		apiConfigDao.addApiConfig(apiConfig);
	}

}
