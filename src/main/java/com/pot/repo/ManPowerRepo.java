package com.pot.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pot.model.Building;
import com.pot.model.ManPower;

public interface ManPowerRepo extends JpaRepository<ManPower, Integer> {
	List<ManPower> getByBuilding(Building building);
}
