package com.sia.ems.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;

public class BaseController {
	public static final String USER_KEY = "loginUser";
	
	protected HttpServletRequest mRequest;
	protected HttpServletResponse mResponse;
	protected HttpSession mSession;

	@ModelAttribute
	public void setReqAndRes(HttpServletRequest request, HttpServletResponse response) {
		this.mRequest = request;
		this.mResponse = response;
		this.mSession = request.getSession();
	}

	/**
	 * 获取url基础路径
	 * 
	 * @return url基础路径
	 */
	public String getBaseUrlPath() {
		String path = mRequest.getContextPath();
		String basePath = mRequest.getScheme() + "://" + mRequest.getServerName() + ":" + mRequest.getServerPort()
				+ path + "/";
		return basePath;
	}
}
