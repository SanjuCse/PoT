package com.pot.runner;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.pot.contracts.UserLogin;
import com.pot.controller.UserController;
import com.pot.model.Building;
import com.pot.model.User;
import com.pot.service.IBuildingService;
import com.pot.service.IInstrumentService;
import com.pot.service.IMaterialService;
import com.pot.service.IUserService;

import jakarta.transaction.Transactional;

@Component
public class PoTRunner implements CommandLineRunner {
	@Autowired
	private IMaterialService materialService;

	@Autowired
	private IInstrumentService instrumentService;

	@Autowired
	private IUserService userService;

	@Autowired
	private IBuildingService buildingService;

//	@Override
//	public void run(String... args) throws Exception {
//		Material material = new Material();
//		material.setCementBrick(2.5);
//		material.setSandBrick(3.5);
//		material.setCement(2.5);
//		material.setConstructionAggregate(2.0);
//		material.setSand(3.5);
//		material.setRod(5);
//		material.setPipe(1);
//		material.setGlass(1);
//		material.setMarble(3);
//		material.setPly(2);
//
//		Boolean isMaterialSaved = materialService.addMaterial(material);
//		if (isMaterialSaved) {
//			System.out.println("Matrial Saved Successfully");
//		} else {
//			System.out.println("Unable to Save Matrial");
//		}
//		
//		Instruments instruments = new Instruments();
//		instruments.setAluminiumChannel(2);
//		instruments.setBrickTowel(3);
//		instruments.setMeasuringTape(1);
//		instruments.setPlumbBob(1);
//		instruments.setRightAngleScale(1);
//		instruments.setWoodenFloat(2);
//		Boolean isInstrumentSaved =instrumentService.addInstrument(instruments);
//		if (isMaterialSaved) {
//			System.out.println("Instrument Saved Successfully");
//		} else {
//			System.out.println("Unable to Save Instrument");
//		}
//	}

	@Override
	public void run(String... args) throws Exception {
//		User user = new User();
//		user.setUserName("Sanjaya Sahu");
//		user.setAddress("Berhampur");
//		user.setDept("IT-Development");
//		user.setEmail("sanju@gmail.com");
//		user.setPassword("sanju@123");
//		user.setIsAdmin(true);
//		userService.regUser(user);
//
//		User user2 = new User();
//		user2.setUserName("Aditya");
//		user2.setAddress("BBSR");
//		user2.setDept("IT-Development");
//		user2.setEmail("aditya@gmail.com");
//		user2.setPassword("aditya@123");
//		userService.regUser(user2);
//
//		User user3 = new User();
//		user3.setUserName("Abhishek");
//		user3.setAddress("CTC");
//		user3.setDept("IT-Development");
//		user3.setEmail("abhishek@gmail.com");
//		user3.setPassword("abhishek@123");
//		userService.regUser(user3);

//		if (user2) {
//			System.out.println("User Registration Success");
//		} else {
//			System.out.println("User Registration Failed");
//		}

		UserLogin login = new UserLogin();
		login.setEmail("sanju@gmail.com");
		login.setPassword("sanju@123");
		Boolean isValidUser = userService.login(login);
		if (isValidUser) {
			System.out.println("Login Successfull");
		} else {
			System.out.println("Login Failed");
		}

		List<Building> listBuilding = buildingService.findAllBuildingsByUser(userService.getUserById(102));
		System.out.println(listBuilding);
//		System.out.println(buildingService.getBuildingByID(UserController.currentLoggedUser.getUid()));
	}

}
