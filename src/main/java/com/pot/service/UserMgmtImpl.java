package com.pot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pot.contracts.UserLogin;
import com.pot.model.User;
import com.pot.repo.UserRepo;

@Service
public class UserMgmtImpl implements IUserService {
	@Autowired
	private UserRepo userRepo;

	@Override
	public Boolean login(UserLogin login) {
		if (login != null) {
			String email = login.getEmail();

			List<User> listUsers = userRepo.findByEmail(email);
			List<User> listValidUsers = userRepo.findByEmailAndPassword(login.getEmail(), login.getPassword());
			if (listUsers.size() != 0 && listUsers.get(0) != null) {
				if (listValidUsers.size() != 0 && listValidUsers.get(0) != null) {
					return true;
				}
			}
		}
		return false;
	}

	@Override
	public Boolean regUser(User user) {
		if (user != null) {
			User user2 = userRepo.save(user);
			return true;
		}
		return false;
	}

	@Override
	public List<User> getAllUsers() {
		return userRepo.findAll();
	}

	@Override
	public User getEmployeeById(int id) {
		return userRepo.getById(id);
	}

	@Override
	public Boolean deleteEmployeeByEno(int id) {
		userRepo.deleteById(id);
		return true;
	}

	@Override
	public Boolean isAdmin(String email) {
		if (userRepo.findByEmail(email).size() != 0) {
			return userRepo.findByEmail(email).get(0).getIsAdmin();
		}
		return false;
	}

}
