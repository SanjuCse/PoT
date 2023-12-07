package com.pot.service;

import java.util.List;
import java.util.Optional;

import com.pot.model.Material;

public interface IMaterialService {
	Boolean addMaterial(Material material);

	List<Material> getAllMaterials();

	Material getMaterialByID(Integer materialId);

	Optional<List<Material>> getMaterialByBuildingID(Integer buildingId);

}
