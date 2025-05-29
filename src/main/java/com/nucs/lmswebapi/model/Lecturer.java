package com.nucs.lmswebapi.model;

import com.nucs.lmswebapi.model.enums.Gender;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.List;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "lecturers_t")
public class Lecturer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String firstName;
    private String lastName;
    private LocalDate dateOfBirth;
    private String imageUrl;
    @Enumerated(EnumType.STRING)
    private Gender gender;
    private String academicTitle;
    private LocalDate firstJoinDate;
    private boolean active;
    @OneToOne(cascade = CascadeType.ALL)
    private User user;

    @OneToMany(mappedBy = "lecturer")
    private List<Course> courses;
}
