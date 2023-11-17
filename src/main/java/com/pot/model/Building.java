package com.pot.model;

import java.awt.Color;
import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.Data;

@Entity
@Data
public class Building {
	@Id
	@GeneratedValue(generator = "bidGen", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "bidGen", sequenceName = "bidGen", initialValue = 1, allocationSize = 1)
	private Integer bid;
	private String buildingName;
	private String buildingOwnerName;
	private Integer floorCount;
	private Double areaInSqFoot;
	private String color;
	private String location;
	private Double cost;
	private String architect;
	private Double height;
	private Boolean isBuildingDetailsFilled;
	@CreationTimestamp
	private LocalDateTime createdDateAndTime;
	@UpdateTimestamp
	private LocalDateTime updatedDateAndTime;
}
