package com.dhu.api.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.dhu.api.enums.SysCodeType;
import com.dhu.api.model.ApiConfig;
import com.dhu.api.service.ApiConfigService;
import com.dhu.api.service.SysCodeService;
import com.dhu.common.ApiJsonResult;
import com.dhu.common.base.ApiBaseController;

@Controller
@RequestMapping(value = "/admin/api")
public class APIConfigController extends ApiBaseController {

	@Autowired
	RestTemplate restTemplate;
	@Autowired
	ApiConfigService apiConfigService;
	@Autowired
	SysCodeService sysCodeService;

	@ResponseBody
	@RequestMapping(value = "/getList/{version}")
	public Object apiRoute(HttpServletRequest request, HttpServletResponse response,
			@PathVariable("version") String version, String hostCode) {
		ApiJsonResult result=ok();
		List<ApiConfig> apiConfig = apiConfigService.listApiConfigByParams(version);
		return result.put("data",apiConfig);
	}
	@ResponseBody
	@RequestMapping(value = "/getDetail/{id}")
	public Object apiRoute(HttpServletRequest request, HttpServletResponse response,
			@PathVariable("id") Long id) {
		ApiJsonResult result=ok();
		ApiConfig apiConfig = apiConfigService.getApiConfigById(id);
		return result.put("data",apiConfig);
	}
	
	@ResponseBody
	@RequestMapping(value = "/save")
	public ApiJsonResult save(HttpServletRequest request, HttpServletResponse response,
			@RequestBody ApiConfig apiConfig) {
		ApiJsonResult result=ok();
		try{
		apiConfigService.addApiConfig(apiConfig);
		}catch(Exception e){
			log.info("插入失败");
			e.printStackTrace();
			return fail(ApiJsonResult.ERRNO_EXCEPTION,"插入失败");
		}
		return result.put("data",apiConfig);
	}
	
	@ResponseBody
	@RequestMapping(value = "/update")
	public ApiJsonResult update(HttpServletRequest request, HttpServletResponse response,
			@RequestBody ApiConfig apiConfig) {
		ApiJsonResult result=ok();
		try {
			apiConfigService.updateApiConfig(apiConfig);
		} catch (Exception e) {
			log.info("更新失败");
			e.printStackTrace();
			return fail(ApiJsonResult.ERRNO_EXCEPTION, "插入失败");
		}
		return result.put("data",apiConfig);
	}
	
	@ResponseBody
	@RequestMapping(value = "/getSysCode")
	public ApiJsonResult getHost(HttpServletRequest request) {
		ApiJsonResult result=ok();
		try {
			result.put("data",sysCodeService.listSysCodeByType(SysCodeType.HOST.name().toLowerCase()));
		} catch (Exception e) {
			log.info("查询失败");
			e.printStackTrace();
			return fail(ApiJsonResult.ERRNO_EXCEPTION, "查询失败");
		}
		return result;
	}
}
