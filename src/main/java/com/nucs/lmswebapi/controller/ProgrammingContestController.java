package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.ProgrammingContestDto;
import com.nucs.lmswebapi.service.ProgrammingContestService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/contests")
@RequiredArgsConstructor
public class ProgrammingContestController {

    private final ProgrammingContestService contestService;

    @PostMapping
    public ResponseEntity<String> createContest(@RequestPart("contest")ProgrammingContestDto form,
                                                @RequestPart(value = "image", required = false)MultipartFile image) throws IOException {
        return ResponseEntity.status(HttpStatus.CREATED).body(contestService.createContest(form, image));
    }

    @GetMapping
    public ResponseEntity<List<ProgrammingContestDto>> getLatestContests() {
        return ResponseEntity.ok(contestService.getLatestContests());
    }
}



