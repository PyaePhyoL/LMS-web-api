package com.nucs.lmswebapi.dto;

import com.nucs.lmswebapi.model.AcademicYear;
import com.nucs.lmswebapi.model.enums.Semester;
import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
public class CourseDto {
    private Integer id;
    private String courseCode;
    private String name;
    private String description;
    private String academicYearLabel;
    private Semester semester;
    private List<String> referenceLinks;
    private String lecturerName;
    private List<TextBlogDto> textBlogDtos;
}
