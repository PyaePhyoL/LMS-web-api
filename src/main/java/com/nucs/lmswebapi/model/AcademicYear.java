package com.nucs.lmswebapi.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "academic_years_t")
public class AcademicYear {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String yearLabel;

    @Column(columnDefinition = "TEXT")
    private String firstSemesterDescription;

    @Column(columnDefinition = "TEXT")
    private String secondSemesterDescription;
}
