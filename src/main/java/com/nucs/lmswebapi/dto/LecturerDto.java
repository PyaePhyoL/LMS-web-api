package com.nucs.lmswebapi.dto;

import com.nucs.lmswebapi.model.enums.Gender;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;

@Data
@AllArgsConstructor
public class LecturerDto {
    private Integer id;
    private String firstName;
    private String lastName;
    private String email;
    private String imageUrl;
    private LocalDate dateOfBirth;
    private Gender gender;
    private String academicTitle;
    private LocalDate firstJoinDate;
    private boolean active;

}
