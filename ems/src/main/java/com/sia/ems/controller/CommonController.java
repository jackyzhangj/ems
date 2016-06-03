package com.sia.ems.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 通用请求控制器
 */
@Controller
public class CommonController extends BaseController {

	/**
	 * 404错误页面
	 * 
	 * @param model
	 *            ：模型对象
	 * @return 视图名称
	 */
	@RequestMapping(value = "/error")
	public String error(Model model) {
		return "404";
	}
}
