package com.pot.service;

import java.util.List;

import com.pot.model.Instruments;

public interface IInstrumentService {
	Boolean addInstrument(Instruments instruments);

	List<Instruments> getAllInstruments();
}
