//package com.pot.model;
//
//import jakarta.annotation.Nonnull;
//import jakarta.persistence.Column;
//import jakarta.persistence.Entity;
//import jakarta.persistence.GeneratedValue;
//import jakarta.persistence.GenerationType;
//import jakarta.persistence.Id;
//import jakarta.persistence.SequenceGenerator;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//import lombok.RequiredArgsConstructor;
//
//@Entity
//@RequiredArgsConstructor
//@Data
//@NoArgsConstructor
//public class Brick {
//	@Id
//	@GeneratedValue(generator = "bIdGen", strategy = GenerationType.SEQUENCE)
//	@SequenceGenerator(sequenceName = "bIdGen", name = "bIdGen", initialValue = 1, allocationSize = 1)
//	private Integer brickId;
//	@Nonnull
//	@Column(name = "Cement-Brick-In-Trips")
//	private Double cement;
//	@Column(name = "Sand-Brick-In-Trips")
//	@Nonnull
//	private Double sand;
//}
