package com.pot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pot.model.Machines;
import com.pot.repo.MachineRepo;

@Service
public class MachineMgmtServiceImpl implements IMachineService {
	@Autowired
	private MachineRepo machineRepo;

	@Autowired
	private IBuildingService buildingService;

	@Override
	public Boolean addMachine(Machines machines) {
		return machineRepo.save(machines).getMachineId() != null;
	}

	@Override
	public Optional<List<Machines>> getMachineByBuildingID(Integer buildingId) {
		return Optional.of(machineRepo.getByBuilding(buildingService.getBuildingByID(buildingId)));
	}
}
