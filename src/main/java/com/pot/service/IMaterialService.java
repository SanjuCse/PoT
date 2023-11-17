package com.pot.service;

import java.util.List;

import com.pot.model.Material;

public interface IMaterialService {
	Boolean addMaterial(Material material);

	List<Material> getAllMaterials();
}
