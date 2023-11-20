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
public class ManPower {
	@Id
	@GeneratedValue(generator = "manPowerIdGen", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(sequenceName = "manPowerIdGen", name = "manPowerIdGen", initialValue = 1, allocationSize = 1)
	@Column(name = "man-power-id")
	private Integer manPowerId;
	
	@Column(name = "project-manager")
	private Integer projectManager;
	
	@Column(name = "contractor")
	private Integer contractor;
	
	@Column(name = "supervisor")
	private Integer supervisor;
	
	@Column(name = "head-concrete-man")
	private Integer headConcreteMan;
	
	@Column(name = "male-helper")
	private Integer maleHelper;
	
	@Column(name = "female-helper")
	private Integer femaleHelper;
	
	@JoinColumn(name = "building-id", referencedColumnName = "building-id")
	@OneToOne(cascade = CascadeType.ALL)
	private Building building;
}
