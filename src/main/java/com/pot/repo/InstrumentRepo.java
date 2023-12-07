package com.pot.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pot.model.Building;
import com.pot.model.Instruments;


public interface InstrumentRepo extends JpaRepository<Instruments, Integer>{
	List<Instruments> getByBuilding(Building building);
}
