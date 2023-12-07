package com.pot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pot.model.ManPower;
import com.pot.repo.ManPowerRepo;

@Service
public class ManpowerMgmtServiceImpl implements IManPowerService {

	@Autowired
	private ManPowerRepo manPowerRepo;

	@Autowired
	private IBuildingService buildingService;

	@Override
	public Boolean addManPower(ManPower manPower) {
		return manPowerRepo.save(manPower).getManPowerId() != null;
	}

	@Override
	public Optional<List<ManPower>> getManPowerByBuildingID(Integer buildingId) {
		return Optional.of(manPowerRepo.getByBuilding(buildingService.getBuildingByID(buildingId)));
	}

}
