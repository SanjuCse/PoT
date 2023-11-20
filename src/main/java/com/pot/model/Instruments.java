package com.pot.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.SequenceGenerator;
import lombok.Data;

@Entity
@Data
public class Instruments {
	@Id
	@GeneratedValue(generator = "InstrIdGen", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(sequenceName = "InstrIdGen", name = "InstrIdGen", initialValue = 1, allocationSize = 1)
	@Column(name = "instr-id")
	private Integer instrId;

	@Column(name = "brick-towel")
	private Integer brickTowel;

	@Column(name = "wooden-float")
	private Integer woodenFloat;

	@Column(name = "plumb-bob")
	private Integer plumbBob;

	@Column(name = "right-angle-scale")
	private Integer rightAngleScale;

	@Column(name = "aluminium-channel")
	private Integer aluminiumChannel;

	@Column(name = "measuring-tape")
	private Integer measuringTape;

	@JoinColumn(name = "building-id", referencedColumnName = "building-id")
	@OneToOne(cascade = CascadeType.ALL)
	private Building building;
}