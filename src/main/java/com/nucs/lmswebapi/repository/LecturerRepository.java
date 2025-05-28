package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.model.Lecturer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LecturerRepository extends JpaRepository<Lecturer, Integer> {
}
