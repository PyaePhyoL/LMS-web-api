package com.nucs.lmswebapi.dto;

import com.nucs.lmswebapi.model.enums.Gender;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;

@Data
@AllArgsConstructor
public class StudentDto {
    private Integer id;
    private String firstName;
    private String lastName;
    private String email;
    private String imageUrl;
    private Gender gender;
    private LocalDate dateOfBirth;
    private String academicYear;
    private LocalDate firstJoinDate;
    private boolean active;
}
