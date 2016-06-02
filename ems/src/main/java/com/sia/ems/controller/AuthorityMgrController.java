package com.sia.ems.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 权限管理控制器
 */
@Controller
public class AuthorityMgrController extends BaseController {

	/**
	 * 显示日志页面
	 * 
	 * @param model
	 *            ：模型对象
	 * @return 视图名称
	 */
	@RequestMapping(value = "/authority")
	public ModelAndView showAuthority() {
		ModelAndView mav = new ModelAndView("authority/authority");
		mav.addObject("user", mSession.getAttribute(USER_KEY));
		return mav;
	}
}
