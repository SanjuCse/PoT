package com.pot.model;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.MapsId;
import jakarta.persistence.OneToOne;
import jakarta.persistence.SequenceGenerator;
import lombok.Data;

@Entity
@Data
public class Building {
	@Id
	@GeneratedValue(generator = "bidGen", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "bidGen", sequenceName = "bidGen", initialValue = 1000, allocationSize = 1)
	@Column(name = "building-id")
	private Integer buildingId;
	
	@Column(name = "building-name")
	private String buildingName;
	
	@Column(name = "building-owner-name")
	private String buildingOwnerName;
	
	@Column(name = "floor-count")
	private Integer floorCount;
	
	@Column(name = "area-in-sq-foot")
	private Double areaInSqFoot;
	
	@Column(name = "building-color")
	private String color;
	
	@Column(name = "building-location")
	private String location;
	
	@Column(name = "building-cost")
	private Double cost;
	
	@Column(name = "building-architect")
	private String architect;
	
	@Column(name = "building-height")
	private Double height;
	
	@Column(name = "is-Building-Details-Filled")
	private Boolean isBuildingDetailsFilled;
	
	
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "machine-id", referencedColumnName = "machineId")
	private Machines machines;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "instr-id", referencedColumnName = "instr-id")
	private Instruments instruments;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "material-id", referencedColumnName = "material-id")
	private Material material;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "man-power-id", referencedColumnName = "man-power-id")
	private ManPower manPower;
	
	@CreationTimestamp
	private LocalDateTime createdDateAndTime;
	
	@UpdateTimestamp
	private LocalDateTime updatedDateAndTime;
}
