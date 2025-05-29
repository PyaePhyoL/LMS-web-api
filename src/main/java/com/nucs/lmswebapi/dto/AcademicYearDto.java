package com.nucs.lmswebapi.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class AcademicYearDto {
    private Integer id;

    private String yearLabel;

    private String firstSemesterDescription;

    private String secondSemesterDescription;
}
