package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.NewsDto;
import com.nucs.lmswebapi.service.NewsService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/news")
public class NewsController {
    private final NewsService newsService;

    @PostMapping
    public ResponseEntity<String> addNews(@RequestPart("news") NewsDto form,
                                          @RequestPart(value = "image", required = false) MultipartFile image) throws IOException {
        return ResponseEntity.status(HttpStatus.CREATED).body(newsService.createNews(form, image));
    }

    @GetMapping
    public ResponseEntity<List<NewsDto>> getLatestNews() {
        return ResponseEntity.ok(newsService.getLatestNews());
    }

    @GetMapping("/{id}")
    public ResponseEntity<NewsDto> getNewsById(@PathVariable int id) {
        return ResponseEntity.ok(newsService.getNewsById(id));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteNewsById(@PathVariable int id) {
        return ResponseEntity.ok(newsService.deleteNewsById(id));
    }
}
