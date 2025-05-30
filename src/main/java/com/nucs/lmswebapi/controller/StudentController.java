package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.PageResult;
import com.nucs.lmswebapi.dto.StudentDto;
import com.nucs.lmswebapi.dto.StudentInfoList;
import com.nucs.lmswebapi.dto.StudentRegisterForm;
import com.nucs.lmswebapi.service.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
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

    @GetMapping("/info/{email}")
    public ResponseEntity<StudentInfoList> getStudentInfoByEmail(@PathVariable String email) {
        return ResponseEntity.ok(studentService.getStudentInfoByEmail(email));
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> updateStudent(@PathVariable int id,
                                                @RequestPart("student") StudentRegisterForm form,
                                                @RequestPart("image") MultipartFile image) throws IOException {
        return ResponseEntity.status(HttpStatus.ACCEPTED).body(studentService.updateStudent(id, form, image));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteStudent(@PathVariable int id) {
        return ResponseEntity.ok(studentService.deleteStudent(id));
    }
}
