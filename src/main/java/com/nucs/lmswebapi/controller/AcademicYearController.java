package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.AcademicYearDto;
import com.nucs.lmswebapi.dto.AcademicYearListItem;
import com.nucs.lmswebapi.service.AcademicYearService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/academicYears")
public class AcademicYearController {

    private final AcademicYearService academicYearService;


    @PostMapping
    public ResponseEntity<String> createAcademicYear(@RequestBody AcademicYearDto academicYearDto) {
        return ResponseEntity.status(HttpStatus.CREATED).body(academicYearService.createAcademicYear(academicYearDto));
    }

    @GetMapping
    public ResponseEntity<List<AcademicYearListItem>> getAllAcademicYears() {
        return ResponseEntity.ok(academicYearService.getAcademicYearList());
    }

    @GetMapping("/{id}")
    public ResponseEntity<AcademicYearDto> getAcademicYearById(@PathVariable int id) {
        return ResponseEntity.ok(academicYearService.getAcademicYearById(id));
    }
}
