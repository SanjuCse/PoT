package com.pot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pot.model.Building;
import com.pot.model.Material;
import com.pot.repo.BuildingRepo;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class BuildingMgmtServiceImpl implements IBuildingService {
	@Autowired
	private BuildingRepo buildingRepo;

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
		return buildingRepo.getById(buildingID);
	}

	@Override
	public Integer updateMaterialByBuildingID(Material material, Integer buildingId) {
		return buildingRepo.updateMaterialByBuildingID(material, buildingId);
	}
}
