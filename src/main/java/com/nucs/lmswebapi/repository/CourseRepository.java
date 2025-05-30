package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.dto.CourseDto;
import com.nucs.lmswebapi.dto.CourseListItem;
import com.nucs.lmswebapi.model.AcademicYear;
import com.nucs.lmswebapi.model.Course;
import com.nucs.lmswebapi.model.enums.Semester;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CourseRepository extends JpaRepository<Course, Integer> {
    @Query("""
    select new com.nucs.lmswebapi.dto.CourseListItem(
        c.id,
        c.name
    )
    from Course c
""")
    List<CourseListItem> findAllCourseListItems();

    List<Course> findByAcademicYear(AcademicYear academicYear);

}
