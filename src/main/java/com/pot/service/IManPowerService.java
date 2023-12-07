package com.pot.service;

import java.util.List;
import java.util.Optional;

import com.pot.model.ManPower;

public interface IManPowerService{
	Boolean addManPower(ManPower manPower);
	
	Optional<List<ManPower>> getManPowerByBuildingID(Integer buildingId);

}
