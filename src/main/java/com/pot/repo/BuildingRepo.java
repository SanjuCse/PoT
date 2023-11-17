package com.pot.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pot.model.Building;

public interface BuildingRepo extends JpaRepository<Building, Integer>{
	
}
