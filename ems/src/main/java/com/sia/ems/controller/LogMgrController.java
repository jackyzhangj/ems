package com.sia.ems.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 日志管理控制器
 */
@Controller
public class LogMgrController extends BaseController {

	/**
	 * 显示日志页面
	 * 
	 * @param model
	 *            ：模型对象
	 * @return 视图名称
	 */
	@RequestMapping(value = "/log")
	public String showLog(Model model) {
		model.addAttribute("user", mSession.getAttribute(USER_KEY));
		return "log";
	}
}
