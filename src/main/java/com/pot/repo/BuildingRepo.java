package com.pot.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.pot.model.Building;
import com.pot.model.Material;

public interface BuildingRepo extends JpaRepository<Building, Integer> {
	
	@Modifying
	@Query("update Building b set b.material = ?1 where b.buildingId = ?2")
	Integer updateMaterialByBuildingID(Material material, Integer buildingId);
}
