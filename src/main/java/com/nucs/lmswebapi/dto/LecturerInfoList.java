package com.nucs.lmswebapi.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class LecturerInfoList {
    private int id;
    private String fullName;
    private String email;
    private String imageUrl;
}
