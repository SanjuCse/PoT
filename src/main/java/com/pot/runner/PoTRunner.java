package com.pot.runner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.pot.model.Instruments;
import com.pot.model.Material;
import com.pot.service.IInstrumentService;
import com.pot.service.IMaterialService;

@Component
public class PoTRunner implements CommandLineRunner {
	@Autowired
	private IMaterialService materialService;
	
	@Autowired
	private IInstrumentService instrumentService;

	@Override
	public void run(String... args) throws Exception {
//		Material material = new Material();
//		material.setCementBrick(2.5);
//		material.setSandBrick(3.5);
//		material.setCement(2.5);
//		material.setConstructionAggregate(2.0);
//		material.setSand(3.5);
//		material.setRod(5);
//		material.setPipe(1);
//		material.setGlass(1);
//		material.setMarble(3);
//		material.setPly(2);
//
//		Boolean isMaterialSaved = materialService.addMaterial(material);
//		if (isMaterialSaved) {
//			System.out.println("Matrial Saved Successfully");
//		} else {
//			System.out.println("Unable to Save Matrial");
//		}
//		
//		Instruments instruments = new Instruments();
//		instruments.setAluminiumChannel(2);
//		instruments.setBrickTowel(3);
//		instruments.setMeasuringTape(1);
//		instruments.setPlumbBob(1);
//		instruments.setRightAngleScale(1);
//		instruments.setWoodenFloat(2);
//		Boolean isInstrumentSaved =instrumentService.addInstrument(instruments);
//		if (isMaterialSaved) {
//			System.out.println("Instrument Saved Successfully");
//		} else {
//			System.out.println("Unable to Save Instrument");
//		}
		
	}

}
