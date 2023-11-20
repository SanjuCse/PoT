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
public class Material {
	@Id
	@GeneratedValue(generator = "materialIdGen", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(sequenceName = "materialIdGen", name = "materialIdGen", initialValue = 1, allocationSize = 1)
	@Column(name = "material-id")
	private Integer materialId;

	@Column(name = "construction-Aggregate-In-Trips")
	private Double constructionAggregate;

	@Column(name = "Sand-In-Trips")
	private Double sand;

	@Column(name = "Cement-In-Trips")
	private Double cement;

	@Column(name = "Cement-Brick-In-Trips")
	private Double cementBrick;

	@Column(name = "Sand-Brick-In-Trips")
	private Double sandBrick;

	@Column(name = "Marble-In-Set")
	private Integer marble;

	@Column(name = "Glass-In-Set")
	private Integer glass;

	@Column(name = "Ply-In-Set")
	private Integer ply;

	@Column(name = "Rod-In-Trips")
	private Integer rod;

	@Column(name = "Pipe-In-Trips")
	private Integer pipe;

	@Column(name = "buildingId")
	private Integer buildingId;

	@JoinColumn(name = "building-id", referencedColumnName = "building-id")
	@OneToOne(cascade = CascadeType.ALL)
	private Building building;
}
