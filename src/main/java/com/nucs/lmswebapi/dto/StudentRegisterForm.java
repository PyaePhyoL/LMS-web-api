package com.nucs.lmswebapi.dto;

import com.nucs.lmswebapi.model.AcademicYear;
import com.nucs.lmswebapi.model.enums.Gender;
import com.nucs.lmswebapi.model.enums.Role;
import lombok.Data;

import java.time.LocalDate;

@Data
public class StudentRegisterForm {
    private final String email;
    private final String password;
    private final Role role;
    private String firstName;
    private String lastName;
    private Gender gender;
    private LocalDate dateOfBirth;
    private int academicYearId;
    private LocalDate firstJoiningDate;
}
