package com.sia.ems.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

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
	@RequestMapping(value = "/authority/{type}")
	public ModelAndView showAuthority(@PathVariable String type) {
		ModelAndView mav = new ModelAndView("authority/authority");
		mav.addObject("type", type);
		mav.addObject("user", mSession.getAttribute(USER_KEY));

		// 组织机构
		if (type.equals("org")) {
		}
		// 用户管理
		else if (type.equals("user")) {
		}
		// 用户权限管理
		else if (type.equals("auth")) {
		}
		// 用户权限设置
		else if (type.equals("authset")) {
		}
		// 历史曲线
		else if (type.equals("history")) {
		}
		// 数据库操作
		else if (type.equals("db")) {
		} else {
			mav.setView(new RedirectView("/ems/error", false));
		}
		return mav;
	}
}
