package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseRepository extends JpaRepository<Course, Integer> {
}
