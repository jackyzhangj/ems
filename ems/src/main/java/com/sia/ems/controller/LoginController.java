package com.sia.ems.controller;

import javax.servlet.http.Cookie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sia.ems.model.JsonResponse;
import com.sia.ems.model.Login;
import com.sia.ems.model.User;
import com.sia.ems.service.UserService;
import com.sia.ems.tools.CookieTool;

/**
 * 登录控制器
 */
@Controller
public class LoginController extends BaseController {

	

	@Autowired
	private UserService mUserService;

	public UserService getUserService() {
		return mUserService;
	}

	public void setUserService(UserService userService) {
		this.mUserService = userService;
	}

	/**
	 * 登录get请求
	 * 
	 * @param model
	 *            模型对象
	 * @return 视图名称
	 */
	@RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET)
	public String setupForm(Model model) {

		// 如果上次记住了用户名和密码，则自动登录
		Cookie cokLoginName = CookieTool.getCookieByName(mRequest, "loginName");
		Cookie cokLoginPwd = CookieTool.getCookieByName(mRequest, "loginPwd");
		if (cokLoginName != null && cokLoginPwd != null && cokLoginName.getValue() != null
				&& cokLoginPwd.getValue() != null) {
			String loginName = cokLoginName.getValue();
			String loginPwd = cokLoginPwd.getValue();
			User user = mUserService.getUserByNameAndPwd(loginName, loginPwd);
			if (user != null) {
				mSession.setAttribute(USER_KEY, user);
				return "redirect:/home";
			}
		}
		return "login";
	}

	/**
	 * 登录post请求
	 * 
	 * @param login
	 *            登录信息
	 * @return 登录请求结果视图名称
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST, headers = { "Content-type=application/json" })
	public @ResponseBody JsonResponse submitForm(@RequestBody Login login) {
		JsonResponse response = new JsonResponse();
		response.setStatus("OK");
		if (login.getUsername().length() == 0) {
			response.setStatus("Error");
			response.setErrorMessage("用户名不能为空");
			return response;
		}
		if (login.getPassword().length() == 0) {
			response.setStatus("Error");
			response.setErrorMessage("密码不能为空");
			return response;
		}

		User user = mUserService.getUserByNameAndPwd(login.getUsername(), login.getPassword());
		if (user == null) {
			response.setStatus("Error");
			response.setErrorMessage("用户名或密码错误，请重试！");
			return response;
		}
		if (login.rememberPwd()) {
			int loginMaxAge = 30 * 24 * 60 * 60; // 定义账户密码的生命周期，这里是一个月。单位为秒
			CookieTool.addCookie(mResponse, "loginName", login.getUsername(), loginMaxAge);
			CookieTool.addCookie(mResponse, "loginPwd", login.getPassword(), loginMaxAge);
		}
		mSession.setAttribute(USER_KEY, user);
		return response;
	}

	/**
	 * 退出登录
	 * 
	 * @param model
	 *            模型对象
	 * @return 视图名称
	 */
	@RequestMapping(value = "/exit")
	public String exit(Model model) {
		// 清除登录信息
		CookieTool.addCookie(mResponse, "loginName", null, 0);
		CookieTool.addCookie(mResponse, "loginPwd", null, 0);
		mSession.setAttribute(USER_KEY, null);
		return "login";
	}

	/**
	 * 登录成功
	 * 
	 * @param model
	 *            模型对象
	 * @return 视图名称
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String success(Model model) {
		model.addAttribute("user", mSession.getAttribute(USER_KEY));
		return "home";
	}
}
