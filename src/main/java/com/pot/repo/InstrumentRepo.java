package com.pot.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pot.model.Instruments;

public interface InstrumentRepo extends JpaRepository<Instruments, Integer>{

}
