package com.sia.ems.service;

import com.sia.ems.model.User;

public interface UserService {
	public User getUserById(int id);
	public User getUserByNameAndPwd(String username, String password);
	public void saveUser(User user);
}
