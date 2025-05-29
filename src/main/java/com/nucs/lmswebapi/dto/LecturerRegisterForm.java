package com.nucs.lmswebapi.dto;

import com.nucs.lmswebapi.model.enums.Gender;
import com.nucs.lmswebapi.model.enums.Role;
import lombok.Data;

import java.time.LocalDate;

@Data
public class LecturerRegisterForm {
    private final String email;
    private final String password;
    private final Role role;
    private String firstName;
    private String lastName;
    private LocalDate dateOfBirth;
    private Gender gender;
    private String academicTitle;
    private LocalDate firstJoinDate;
}

