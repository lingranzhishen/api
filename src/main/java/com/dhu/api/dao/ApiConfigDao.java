package com.dhu.api.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.dhu.api.model.ApiConfig;

@Repository
public interface ApiConfigDao {
public ApiConfig getApiConfigByParams(Map<String,Object>pMap);

public List<ApiConfig> listApiConfigByParams(Map<String, Object> pMap);
}