package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.dto.AcademicYearDto;
import com.nucs.lmswebapi.dto.AcademicYearListItem;
import com.nucs.lmswebapi.model.AcademicYear;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface AcademicYearRepository extends JpaRepository<AcademicYear, Integer> {


    @Query("""
    select new com.nucs.lmswebapi.dto.AcademicYearDto(
        a.id,
        a.yearLabel,
        a.firstSemesterDescription,
        a.secondSemesterDescription
    )
    from AcademicYear a
    where a.id = :id
""")
    Optional<AcademicYearDto> findAcademicYearDtoById(int id);

    @Query("""
    select new com.nucs.lmswebapi.dto.AcademicYearListItem(
    a.id,
    a.yearLabel
    )
    from AcademicYear a
""")
    List<AcademicYearListItem> findAllAcademicYearListItems();
}
