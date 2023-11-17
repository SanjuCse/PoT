package com.pot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import lombok.Data;

@Entity
@Data
public class Instruments {
	@Id
	@GeneratedValue(generator = "InstrIdGen", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(sequenceName = "InstrIdGen", name = "InstrIdGen", initialValue = 1, allocationSize = 1)
	private Integer InstrId;
	private Integer brickTowel;
	private Integer woodenFloat;
	private Integer plumbBob;
	private Integer rightAngleScale;
	private Integer aluminiumChannel;
	private Integer measuringTape;
	@ManyToOne
	private Building building;
}