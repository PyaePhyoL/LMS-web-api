package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.dto.StudentDto;
import com.nucs.lmswebapi.dto.StudentInfoList;
import com.nucs.lmswebapi.model.Student;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface StudentRepository extends JpaRepository<Student, Integer> {


    @Query("""
    select new com.nucs.lmswebapi.dto.StudentDto(
    s.id,
    s.firstName,
    s.lastName,
    s.user.email,
    s.imageUrl,
    s.gender,
    s.dateOfBirth,
    s.academicYear.yearLabel,
    s.firstJoiningDate,
    s.active
    )
    from Student s
""")
    Optional<StudentDto> findStudentDtoById(Integer id);

    @Query("""
    select new com.nucs.lmswebapi.dto.StudentInfoList(
    s.id,
    CONCAT(s.firstName, " ", s.lastName),
    s.user.email,
    s.imageUrl
    )
    from Student s
""")
    List<StudentInfoList> findAllStudentInfos(Pageable pageable);
}
