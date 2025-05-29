package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.PageResult;
import com.nucs.lmswebapi.dto.StudentDto;
import com.nucs.lmswebapi.dto.StudentInfoList;
import com.nucs.lmswebapi.service.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/students")
public class StudentController {

    private final StudentService studentService;

    @GetMapping
    public ResponseEntity<PageResult<StudentInfoList>> getAllStudents(
            @RequestParam(required = false, defaultValue = "0") int page,
            @RequestParam(required = false, defaultValue = "10") int size
    ) {
        return ResponseEntity.ok(studentService.getAllStudentInfos(page, size));
    }

    @GetMapping("/{id}")
    public ResponseEntity<StudentDto> getStudentById(@PathVariable int id) {
        return ResponseEntity.ok(studentService.getStudentDtoById(id));
    }
}
