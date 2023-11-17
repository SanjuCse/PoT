package com.pot.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pot.model.Material;

public interface MaterialRepo extends JpaRepository<Material, Integer> {
}
