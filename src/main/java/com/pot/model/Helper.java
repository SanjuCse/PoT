package com.pot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.Data;

@Entity
@Data
public class Helper {
	@Id
	@GeneratedValue(generator = "hIdGen", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(sequenceName = "hIdGen", name = "hIdGen", initialValue = 1, allocationSize = 1)
	private Integer helperId;
	private Integer male;
	private Integer female;
}
