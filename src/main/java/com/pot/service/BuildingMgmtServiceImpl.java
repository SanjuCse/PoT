package com.pot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import com.pot.model.Building;
import com.pot.model.Material;
import com.pot.model.User;
import com.pot.repo.BuildingRepo;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class BuildingMgmtServiceImpl implements IBuildingService {
	@Autowired
	private BuildingRepo buildingRepo;

	@Autowired
	private IUserService userService;

	@Override
	public Boolean addBuilding(Building building) {
		return buildingRepo.save(building) != null;
	}

	@Override
	public List<Building> getAllBuildings() {
		return buildingRepo.findAll();
	}

	@Override
	public Building getBuildingByID(Integer buildingID) {
		return buildingRepo.getReferenceById(buildingID);
	}

	@Override
	public Integer updateMaterialByBuildingID(Material material, Integer buildingId) {
		return buildingRepo.updateMaterialByBuildingID(material, buildingId);
	}

	@Override
	public List<Building> findAllBuildingsByUser(User user) {
		return buildingRepo.findAllBuildingsByUser(user);
	}

	@Override
	public List<Building> getAllBuildingsByUserID(Integer uid) {
		Building building = new Building();
		building.setUser(userService.getUserById(uid));
		Example<Building> userEx = Example.of(building);
		return buildingRepo.findAll(userEx);
	}

	@Override
	public List<Building> getByBuildingName(String buildingName) {
		return buildingRepo.getByBuildingName(buildingName);
	}

	@Override
	public List<Building> getByBuildingNameAndUser(String buildingName, User user) {
		return buildingRepo.getByBuildingNameAndUser(buildingName, user);
	}
}
