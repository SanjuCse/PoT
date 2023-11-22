package com.pot.service;

import java.util.List;

import com.pot.contracts.UserLogin;
import com.pot.model.Building;
import com.pot.model.User;

public interface IUserService {
	Boolean login(UserLogin login);

	Boolean regUser(User user);

	List<User> getAllUsers();

	User getUserById(int id);

	Boolean deleteUserByEno(int id);

	Boolean isAdmin(String email);

	User getUserByEmailID(String email);
	
//	List<Building> getAllBuildingsByUserID(Integer uid);
}
