package com.dhu.api.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.dhu.api.model.SysCode;

@Repository
public interface SysCodeDao {
	public List<SysCode> getAllSysCodeByType(Map<String, Object> pMap);
}