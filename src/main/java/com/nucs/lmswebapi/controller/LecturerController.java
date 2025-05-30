package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.LecturerDto;
import com.nucs.lmswebapi.dto.LecturerInfoList;
import com.nucs.lmswebapi.dto.LecturerRegisterForm;
import com.nucs.lmswebapi.dto.PageResult;
import com.nucs.lmswebapi.service.LecturerService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequestMapping("/lecturers")
@RequiredArgsConstructor
public class LecturerController {

    private final LecturerService lecturerService;

    @GetMapping
    public ResponseEntity<PageResult<LecturerInfoList>> getAllLecturers(
            @RequestParam(required = false, defaultValue = "0") int page,
            @RequestParam(required = false, defaultValue = "10") int size
    ) {
        return ResponseEntity.ok(lecturerService.getAllLecturers(page, size));
    }

    @GetMapping("/{id}")
    public ResponseEntity<LecturerDto> getLecturerById(@PathVariable int id) {
        return ResponseEntity.ok(lecturerService.getLecturerById(id));
    }

    @GetMapping("/info/{email}")
    public ResponseEntity<LecturerInfoList> getLecturerInfoByEmail(@PathVariable String email) {
        return ResponseEntity.ok(lecturerService.getLecturerInfoByEmail(email));
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> updateLecturer(@PathVariable int id,
                                                 @RequestPart("lecturer") LecturerRegisterForm form,
                                                 @RequestPart(value = "image", required = false) MultipartFile image) throws IOException {
        return ResponseEntity.status(HttpStatus.ACCEPTED).body(lecturerService.updateLecturer(id, form, image));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteLecturerById(@PathVariable int id) {
        return ResponseEntity.ok(lecturerService.deleteById(id));
    }
}
