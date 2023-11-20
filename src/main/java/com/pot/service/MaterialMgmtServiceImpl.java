package com.pot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pot.model.Material;
import com.pot.repo.MaterialRepo;

@Service
public class MaterialMgmtServiceImpl implements IMaterialService {
	@Autowired
	private MaterialRepo materialRepo;

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
		return materialRepo.getById(materialId);
	}

}
