package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.model.ProgrammingContest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProgrammingContestsRepository extends JpaRepository<ProgrammingContest, Integer> {
}
