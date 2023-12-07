package com.pot.service;

import java.util.List;
import java.util.Optional;

import com.pot.model.Machines;

public interface IMachineService {
	Boolean addMachine(Machines machines);

	Optional<List<Machines>> getMachineByBuildingID(Integer buildingId);
}
