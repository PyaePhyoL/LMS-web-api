package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Integer> {
}
