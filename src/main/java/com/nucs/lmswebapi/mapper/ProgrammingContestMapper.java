package com.nucs.lmswebapi.mapper;

import com.nucs.lmswebapi.dto.ProgrammingContestDto;
import com.nucs.lmswebapi.model.ProgrammingContest;

public class ProgrammingContestMapper {

    private ProgrammingContestMapper() {}

    public static ProgrammingContest toProgrammingContest(ProgrammingContestDto dto) {
        return ProgrammingContest.builder()
                .title(dto.getTitle())
                .description(dto.getDescription())
                .starDate(dto.getStarDate())
                .build();
    }
}
