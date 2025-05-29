package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.LecturerRegisterForm;
import com.nucs.lmswebapi.dto.LoginForm;
import com.nucs.lmswebapi.dto.LoginResponse;
import com.nucs.lmswebapi.dto.StudentRegisterForm;
import com.nucs.lmswebapi.service.AuthenticationService;
import com.nucs.lmswebapi.service.LecturerService;
import com.nucs.lmswebapi.service.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequiredArgsConstructor
@RequestMapping("/auth")
public class AuthenticationController {

    private final AuthenticationService authenticationService;
    private final LecturerService lecturerService;
    private final StudentService studentService;

    @PostMapping
    public ResponseEntity<LoginResponse> login(@RequestBody LoginForm loginForm) {
        return ResponseEntity.ok(authenticationService.login(loginForm));
    }

    @PostMapping("/lecturer-register")
    public ResponseEntity<String> lecturerRegister(@RequestPart("lecturer") LecturerRegisterForm form,
                                                   @RequestPart(value = "image", required = false) MultipartFile image ) throws IOException {
        return ResponseEntity.status(HttpStatus.CREATED).body(lecturerService.lecturerRegister(form, image));
    }

    @PostMapping("/student-register")
    public ResponseEntity<String> studentRegister(@RequestPart("student") StudentRegisterForm form,
                                                   @RequestPart(value = "image", required = false) MultipartFile image ) throws IOException {
        return ResponseEntity.status(HttpStatus.CREATED).body(studentService.studentRegister(form, image));
    }
}
