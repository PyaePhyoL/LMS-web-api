package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.dto.LecturerDto;
import com.nucs.lmswebapi.dto.LecturerInfoList;
import com.nucs.lmswebapi.model.Lecturer;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface LecturerRepository extends JpaRepository<Lecturer, Integer> {

    @Query("""
    select new com.nucs.lmswebapi.dto.LecturerDto(
    l.id,
    l.firstName,
    l.lastName,
    l.user.email,
    l.imageUrl,
    l.dateOfBirth,
    l.gender,
    l.academicTitle,
    l.firstJoinDate,
    l.active
    )
    from Lecturer l
    where l.id = :id
""")
    Optional<LecturerDto> findLecturerById(Integer id);


    @Query("""
    select new com.nucs.lmswebapi.dto.LecturerInfoList(
    l.id,
    CONCAT(l.firstName, " ", l.lastName),
    l.user.email,
    l.imageUrl
    )
    from Lecturer l
""")
    List<LecturerInfoList> findAllLecturerInfoList(Pageable pageable);

}
