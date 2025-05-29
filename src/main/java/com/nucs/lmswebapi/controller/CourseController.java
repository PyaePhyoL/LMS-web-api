package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.CourseCreateForm;
import com.nucs.lmswebapi.dto.CourseDto;
import com.nucs.lmswebapi.dto.CourseListItem;
import com.nucs.lmswebapi.service.CloudinaryUpload;
import com.nucs.lmswebapi.service.CourseService;
import lombok.RequiredArgsConstructor;
import org.apache.coyote.Response;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/courses")
public class CourseController {

    private final CourseService courseService;
    private final CloudinaryUpload cloudinaryUpload;

    @PostMapping
    public ResponseEntity<String> createCourse(@RequestPart("course") CourseCreateForm form,
                                       @RequestPart(value = "image", required = false)MultipartFile file) throws IOException {
        return ResponseEntity.status(HttpStatus.CREATED).body(
                courseService.createCourse(form, file)
        );
    }

    @GetMapping
    public ResponseEntity<List<CourseListItem>> getCourseList() {
        return ResponseEntity.status(HttpStatus.OK).body(courseService.getCourseList());
    }

    @GetMapping("/{id}")
    public ResponseEntity<CourseDto>  getCourseById(@PathVariable int id) {
        return ResponseEntity.status(HttpStatus.OK).body(courseService.getCourseById(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> updateCourseById(@PathVariable int id, @RequestBody CourseCreateForm form) {
        return ResponseEntity.status(HttpStatus.OK).body(courseService.updateCourseById(id, form));
    }

    @PostMapping(value = "/file", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<String> uploadFile(@RequestPart("file") MultipartFile file) throws IOException {
        return ResponseEntity.status(HttpStatus.CREATED).body(cloudinaryUpload.uploadImage(file));
    }
}
