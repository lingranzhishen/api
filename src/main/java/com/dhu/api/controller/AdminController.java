package com.dhu.api.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/api/manager")
public class AdminController {

	@RequestMapping(value = "")
	public String index(HttpServletResponse response) {
		return "manager/index";
	}
	


}
