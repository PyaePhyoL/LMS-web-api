package com.nucs.lmswebapi.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class NewsDto {
    private Integer id;
    private String title;
    private String description;
    private String imageUrl;
    private LocalDateTime createdAt;
    private String createdBy;
}
