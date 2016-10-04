package com.dhu.api.model;

import java.io.Serializable;
import java.util.Date;

import com.dhu.common.util.ConfigUtil;

public class ApiConfig implements Serializable {
	private static final long serialVersionUID = -6056974453843870721L;
	private Long id;

	private String name;

	private String versionCode;

	private String hostCode;

	private String apiPath;
	
	private String hostRestApi;

	private Date createTime;

	private String creator;

	private Date updateTime;

	private String maintainer;

	private String hostName;

	private String description;
	
	private String requestMethod;
	
	private String apiGatewayPath;
	
	public String getApiGatewayPath() {
		return ConfigUtil.getConfigMap().get("apihost")+"/api/"+getVersionCode()+"/"+getHostCode()+"/"+getApiPath();
	}

	public void setApiGatewayPath(String apiGatewayPath) {
		this.apiGatewayPath = apiGatewayPath;
	}

	public String getEndPointPath() {
		return ConfigUtil.getConfigMap().get(getHostCode()+"host")+"/"+getHostRestApi();
	}

	public void setEndPointPath(String endPointPath) {
		this.endPointPath = endPointPath;
	}

	private String endPointPath;

	public String getRequestMethod() {
		return requestMethod;
	}

	public void setRequestMethod(String requestMethod) {
		this.requestMethod = requestMethod;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVersionCode() {
		return versionCode;
	}

	public void setVersionCode(String versionCode) {
		this.versionCode = versionCode;
	}

	public String getHostCode() {
		return hostCode;
	}

	public void setHostCode(String hostCode) {
		this.hostCode = hostCode;
	}

	public String getApiPath() {
		return apiPath;
	}

	public void setApiPath(String apiPath) {
		this.apiPath = apiPath;
	}

	public String getHostRestApi() {
		return hostRestApi;
	}

	public void setHostRestApi(String hostRestApi) {
		this.hostRestApi = hostRestApi;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getMaintainer() {
		return maintainer;
	}

	public void setMaintainer(String maintainer) {
		this.maintainer = maintainer;
	}

	public String getHostName() {
		return hostName;
	}

	public void setHostName(String hostName) {
		this.hostName = hostName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}