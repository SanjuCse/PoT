package com.pot.service;

import java.util.List;

import com.pot.model.Building;
import com.pot.model.Material;
import com.pot.model.User;

public interface IBuildingService {
	Boolean addBuilding(Building building);

	List<Building> getAllBuildings();

	Building getBuildingByID(Integer buildingID);

	Integer updateMaterialByBuildingID(Material material, Integer buildingId);

	List<Building> findAllBuildingsByUser(User user);

	List<Building> getAllBuildingsByUserID(Integer uid);
}
