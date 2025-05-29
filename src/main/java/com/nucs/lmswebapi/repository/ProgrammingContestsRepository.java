package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.dto.ProgrammingContestDto;
import com.nucs.lmswebapi.model.ProgrammingContest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface ProgrammingContestsRepository extends JpaRepository<ProgrammingContest, Integer> {

    @Query("""
    select new com.nucs.lmswebapi.dto.ProgrammingContestDto(
    c.id,
    c.title,
    c.description,
    c.imageUrl,
    c.startDate
    )
    from ProgrammingContest as c
    order by c.createdAt desc
    limit 2
""")
    List<ProgrammingContestDto> findLatestContest();

    @Query("""
    select new com.nucs.lmswebapi.dto.ProgrammingContestDto(
    c.id,
    c.title,
    c.description,
    c.imageUrl,
    c.startDate
    )
    from ProgrammingContest as c
    where c.id = :id
""")
    Optional<ProgrammingContestDto> findProgrammingContestById(int id);

    @Query("""
    select new com.nucs.lmswebapi.dto.ProgrammingContestDto(
    c.id,
    c.title,
    c.description,
    c.imageUrl,
    c.startDate
    )
    from ProgrammingContest as c
""")
    List<ProgrammingContestDto> findAllContests(Pageable pageable);
}
