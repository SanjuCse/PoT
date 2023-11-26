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
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.SequenceGenerator;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
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

	@OneToOne(mappedBy = "building")
	private Machines machines;

	@OneToOne(mappedBy = "building")
	private Instruments instruments;

	@OneToOne(mappedBy = "building")
	private Material material;

	@OneToOne(mappedBy = "building")
	private ManPower manPower;

	@ManyToOne(cascade = { CascadeType.MERGE, CascadeType.REMOVE, CascadeType.REFRESH, CascadeType.DETACH })
	@JoinColumn(name = "user-id")
	private User user;

	@CreationTimestamp
	private LocalDateTime createdDateAndTime;

	@UpdateTimestamp
	private LocalDateTime updatedDateAndTime;
}
