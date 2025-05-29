package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.PageResult;
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

    @GetMapping("/all")
    public ResponseEntity<PageResult<ProgrammingContestDto>> getAllContests(
            @RequestParam(required = false, defaultValue = "0") int page,
            @RequestParam(required = false, defaultValue = "10") int size
    ) {
        return ResponseEntity.ok(contestService.getAllContests(page, size));
    }

    @GetMapping
    public ResponseEntity<List<ProgrammingContestDto>> getLatestContests() {
        return ResponseEntity.ok(contestService.getLatestContests());
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProgrammingContestDto> getContestById(@PathVariable int id) {
        return ResponseEntity.ok(contestService.getContestById(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> updateContestById(@PathVariable int id,
                                                    @RequestPart("contest")ProgrammingContestDto form,
                                                    @RequestPart(value = "image", required = false)MultipartFile image) throws IOException {
        return ResponseEntity.status(HttpStatus.ACCEPTED).body(contestService.updateContest(id, form, image));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteContestById(@PathVariable int id) {
        return ResponseEntity.ok(contestService.deleteContestById(id));
    }
}



