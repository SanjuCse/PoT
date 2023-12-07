package com.pot.service;

import java.util.List;
import java.util.Optional;

import com.pot.model.Instruments;

public interface IInstrumentService {
	Boolean addInstrument(Instruments instruments);
	
	Optional<List<Instruments>> getInstrumentByBuildingID(Integer buildingId);

	List<Instruments> getAllInstruments();

}
