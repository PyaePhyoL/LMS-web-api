package com.nucs.lmswebapi.model;

import com.nucs.lmswebapi.model.enums.Semester;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "courses_t")
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String courseCode;
    private String name;
    private String imageUrl;
    @Column(columnDefinition = "TEXT")
    private String description;

    @ManyToOne
    @JoinColumn(name = "academic_year_id")
    private AcademicYear academicYear;

    @Enumerated(EnumType.STRING)
    private Semester semester;

    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> referenceLinks;

    @ManyToOne
    private Lecturer lecturer;
}
