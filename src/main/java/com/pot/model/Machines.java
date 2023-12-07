package com.pot.model;

import jakarta.persistence.CascadeType;
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
public class Machines {
	@Id
	@GeneratedValue(generator = "machineIdGen", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(sequenceName = "machineIdGen", name = "machineIdGen", initialValue = 4000, allocationSize = 1)
	private Integer machineId;

	private Integer concreteMixer;

	private Integer bullDozer;

	private Integer hydroliftCrane;

	@JoinColumn(name = "building-id", referencedColumnName = "building-id")
	@OneToOne(cascade = CascadeType.ALL)
	private Building building;
}
