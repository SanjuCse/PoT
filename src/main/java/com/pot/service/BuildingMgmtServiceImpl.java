package com.pot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pot.model.Building;
import com.pot.repo.BuildingRepo;

@Service
public class BuildingMgmtServiceImpl implements IBuildingService {
	@Autowired
	private BuildingRepo buildingRepo;

	@Override
	public Boolean addBuilding(Building building) {
		return buildingRepo.save(building) != null;
	}

}
