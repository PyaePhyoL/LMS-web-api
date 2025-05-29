package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.LecturerDto;
import com.nucs.lmswebapi.dto.LecturerInfoList;
import com.nucs.lmswebapi.dto.PageResult;
import com.nucs.lmswebapi.service.LecturerService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

}
