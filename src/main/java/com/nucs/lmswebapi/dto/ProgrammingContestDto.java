package com.nucs.lmswebapi.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;

@Data
@AllArgsConstructor
public class ProgrammingContestDto {
    private Integer id;
    private String title;
    private String description;
    private String imageUrl;
    private LocalDate startDate;
}
