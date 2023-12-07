package com.pot.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pot.model.Building;
import com.pot.model.Material;

public interface MaterialRepo extends JpaRepository<Material, Integer> {
	List<Material> getByBuilding(Building building);
}
