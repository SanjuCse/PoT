package com.pot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pot.model.Material;
import com.pot.repo.BuildingRepo;
import com.pot.repo.MaterialRepo;

@Service
public class MaterialMgmtServiceImpl implements IMaterialService {
	@Autowired
	private MaterialRepo materialRepo;

	@Autowired
	private BuildingRepo buildingRepo;

	@Override
	public Boolean addMaterial(Material material) {
		Material material2 = materialRepo.save(material);
		return material2.getMaterialId() != null;
	}

	@Override
	public List<Material> getAllMaterials() {
		return materialRepo.findAll();
	}

	@Override
	public Material getMaterialByID(Integer materialId) {
		return materialRepo.getReferenceById(materialId);
	}

	@Override
	public Optional<List<Material>> getMaterialByBuildingID(Integer buildingId) {
		return Optional.of(materialRepo.getByBuilding(buildingRepo.getReferenceById(buildingId)));
	}
}
