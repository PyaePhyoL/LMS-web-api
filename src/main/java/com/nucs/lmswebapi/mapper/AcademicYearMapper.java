package com.nucs.lmswebapi.mapper;

import com.nucs.lmswebapi.dto.AcademicYearDto;
import com.nucs.lmswebapi.model.AcademicYear;

public class AcademicYearMapper {

    private AcademicYearMapper() {
    }

    public static AcademicYear toAcademicYear(AcademicYearDto dto) {
        return AcademicYear.builder()
                .yearLabel(dto.getYearLabel())
                .firstSemesterDescription(dto.getFirstSemesterDescription())
                .secondSemesterDescription(dto.getSecondSemesterDescription())
                .build();
    }

    public static AcademicYearDto toDto(AcademicYear entity) {
        return AcademicYearDto.builder()
                .id(entity.getId())
                .yearLabel(entity.getYearLabel())
                .firstSemesterDescription(entity.getFirstSemesterDescription())
                .secondSemesterDescription(entity.getSecondSemesterDescription())
                .build();
    }
}
