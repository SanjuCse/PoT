package com.pot.service;

import java.util.List;

import com.pot.contracts.UserLogin;
import com.pot.model.User;

public interface IUserService {
	Boolean login(UserLogin login);

	Boolean regUser(User user);

	List<User> getAllUsers();

	User getEmployeeById(int id);

	Boolean deleteEmployeeByEno(int id);

	Boolean isAdmin(String email);

}
