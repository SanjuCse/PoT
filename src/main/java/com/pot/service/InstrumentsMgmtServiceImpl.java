package com.pot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pot.model.Instruments;
import com.pot.repo.InstrumentRepo;

@Service 
public class InstrumentsMgmtServiceImpl implements IInstrumentService {
	@Autowired
	private InstrumentRepo instrumentRepo;

	@Override
	public Boolean addInstrument(Instruments instruments) {
		return instrumentRepo.save(instruments) != null;
	}

	@Override
	public List<Instruments> getAllInstruments() {
		return instrumentRepo.findAll();
	}

}
