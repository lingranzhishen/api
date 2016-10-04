package com.dhu.api.model;

import java.io.Serializable;
import java.util.Date;

public class SysCode implements Serializable {
	
	private static final long serialVersionUID = 4566136440945242949L;

	
   private String code;

   
   private String type;

   
    private String codeName;

    
    private Date createTime;

    
    private Integer sort;

    
    private Date updateTime;

    
    private String value;

    public String getCode() {
        return code;
    }

    
    public void setCode(String code) {
        this.code = code;
    }

    
    public String getType() {
        return type;
    }

    
    public void setType(String type) {
        this.type = type;
    }
     
    
    public String getCodeName() {
        return codeName;
    }

    
    public void setCodeName(String codeName) {
        this.codeName = codeName;
    }

    
    public Date getCreateTime() {
        return createTime;
    }

    
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    
    public Integer getSort() {
        return sort;
    }

    
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    
    public Date getUpdateTime() {
        return updateTime;
    }

    
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    
    public String getValue() {
        return value;
    }

    
    public void setValue(String value) {
        this.value = value;
    }
}