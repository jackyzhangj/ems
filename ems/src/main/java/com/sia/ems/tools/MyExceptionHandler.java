package com.sia.ems.tools;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class MyExceptionHandler implements HandlerExceptionResolver {
	public ModelAndView resolveException(HttpServletRequest req, HttpServletResponse resp, Object handler, Exception ex) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("ex", ex); // jsp页面通过${ex}来获取
		return new ModelAndView("500", model);
	}
}
