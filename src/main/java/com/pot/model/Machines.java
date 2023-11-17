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
public class Machines {
	@Id
	@GeneratedValue(generator = "machineIdGen", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(sequenceName = "machineIdGen", name = "machineIdGen", initialValue = 1, allocationSize = 1)
	private Integer machineId;
	private Integer concreteMixer;
	private Integer bullDozer;
	private Integer hydroliftCrane;
	@ManyToOne
	private Building building;
}
