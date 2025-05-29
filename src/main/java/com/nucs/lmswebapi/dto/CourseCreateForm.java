package com.nucs.lmswebapi.dto;

import com.nucs.lmswebapi.model.enums.Semester;
import lombok.Data;

import java.util.List;

@Data
public class CourseCreateForm {
    private Integer id;
    private String courseCode;
    private String name;
    private String description;
    private int academicYearId;
    private Semester semester;
    private List<String> referenceLinks;
    private int lecturerId;
}
