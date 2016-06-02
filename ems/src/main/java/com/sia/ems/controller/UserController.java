package com.sia.ems.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.sia.ems.model.User;
import com.sia.ems.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {
	@Autowired
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(method = RequestMethod.GET)
	public @ResponseBody String showUser() {

		return "12";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public @ResponseBody String showOneUser(@PathVariable("id") int id) {
		User user = userService.getUserById(id);
		if (user != null) {
			ObjectMapper mapper = new ObjectMapper();
			mapper.configure(SerializationFeature.INDENT_OUTPUT, Boolean.TRUE);
			try {
				return mapper.writeValueAsString(user);
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}
		}
		return "用户不存在";
	}
}
