package com.nucs.lmswebapi.mapper;

import com.nucs.lmswebapi.dto.CourseCreateForm;
import com.nucs.lmswebapi.dto.CourseDto;
import com.nucs.lmswebapi.model.Course;

public class CourseMapper {

    private CourseMapper() {
    }

    public static Course toCourse(CourseCreateForm form) {
        return Course.builder()
                .courseCode(form.getCourseCode())
                .name(form.getName())
                .description(form.getDescription())
                .semester(form.getSemester())
                .referenceLinks(form.getReferenceLinks())
                .build();
    }

    public static CourseDto toCourseDto(Course course) {
        return CourseDto.builder()
                .id(course.getId())
                .courseCode(course.getCourseCode())
                .name(course.getName())
                .description(course.getDescription())
                .imageUrl(course.getImageUrl())
                .academicYearLabel(course.getAcademicYear().getYearLabel())
                .semester(course.getSemester())
                .referenceLinks(course.getReferenceLinks())
                .lecturerName(course.getLecturer().getFirstName() + " " + course.getLecturer().getLastName())
                .build();
    }
}
