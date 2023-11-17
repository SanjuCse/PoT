package com.pot.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import lombok.Data;

@Entity
@Data
public class ManPower {
	@Id
	@GeneratedValue(generator = "manPowerIdGen", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(sequenceName = "manPowerIdGen", name = "manPowerIdGen", initialValue = 1, allocationSize = 1)
	private Integer manPowerId;
	private Integer projectManager;
	private Integer contractor;
	private Integer supervisor;
	private Integer headConcreteMan;
	@ManyToOne(cascade = CascadeType.ALL)
	private Helper maleHelper;
	@ManyToOne(cascade = CascadeType.ALL)
	private Helper femaleHelper;
	@JoinColumn(name = "Building-ID")
	@ManyToOne
	private Building building;
}
