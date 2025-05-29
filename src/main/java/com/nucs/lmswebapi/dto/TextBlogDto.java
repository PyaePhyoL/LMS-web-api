package com.nucs.lmswebapi.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class TextBlogDto {
    private Integer id;
    private String title;
    private String content;
}
