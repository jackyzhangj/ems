package com.sia.ems.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sia.ems.dao.UserMapper;
import com.sia.ems.model.User;
import com.sia.ems.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	public UserMapper getUserMapper() {
		return userMapper;
	}

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	public User getUserById(int id) {
		return userMapper.selectByPrimaryKey(id);
	}

	public User getUserByNameAndPwd(String username, String password) {
		if (username == null || username.length() == 0) {
			return null;
		}
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("username", username);
		params.put("password", password);
		return userMapper.selectByNameAndPwd(params);
	}

	public void saveUser(User user) {
		userMapper.insert(user);
		// 抛出运行时异常，sql会自动rollback
		// throw new RuntimeException();
	}
}
