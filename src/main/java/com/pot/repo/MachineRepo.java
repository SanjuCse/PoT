package com.pot.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pot.model.Building;
import com.pot.model.Machines;

public interface MachineRepo extends JpaRepository<Machines, Integer> {
	List<Machines> getByBuilding(Building building);
}
