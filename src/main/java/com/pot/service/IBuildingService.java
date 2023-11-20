package com.pot.service;

import java.util.List;

import com.pot.model.Building;

public interface IBuildingService {
	Boolean addBuilding(Building building);

	List<Building> getAllBuildings();

	Building getBuildingByID(Integer buildingID);
}
