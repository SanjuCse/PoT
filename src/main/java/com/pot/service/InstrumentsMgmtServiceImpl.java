package com.pot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pot.model.Instruments;
import com.pot.repo.InstrumentRepo;

@Service
public class InstrumentsMgmtServiceImpl implements IInstrumentService {
	@Autowired
	private InstrumentRepo instrumentRepo;

	@Autowired
	private IBuildingService buildingService;

	@Override
	public Boolean addInstrument(Instruments instruments) {
		return instrumentRepo.save(instruments) != null;
	}

	@Override
	public List<Instruments> getAllInstruments() {
		return instrumentRepo.findAll();
	}

	@Override
	public Optional<List<Instruments>> getInstrumentByBuildingID(Integer buildingId) {
		return Optional.of(instrumentRepo.getByBuilding(buildingService.getBuildingByID(buildingId)));
	}

}
