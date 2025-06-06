package com.nucs.lmswebapi.controller;

import com.nucs.lmswebapi.dto.CourseCreateForm;
import com.nucs.lmswebapi.dto.CourseDto;
import com.nucs.lmswebapi.dto.CourseListItem;
import com.nucs.lmswebapi.model.enums.Semester;
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

    @GetMapping("/list")
    public ResponseEntity<List<CourseListItem>> getCourseList() {
        return ResponseEntity.status(HttpStatus.OK).body(courseService.getCourseList());
    }

    @GetMapping("/all")
    public ResponseEntity<List<CourseDto>> getAllCourseDetails() {
        return ResponseEntity.status(HttpStatus.OK).body(courseService.getAllCourseDetails());
    }

    @GetMapping
    public ResponseEntity<List<CourseDto>> getCourseListByYearAndSemester(@RequestParam("year") int yearId,
                                                              @RequestParam("semester") Semester semester) {
        return ResponseEntity.ok(courseService.getCourseListByYearAndSemester(yearId, semester));
    }

    @GetMapping("/{id}")
    public ResponseEntity<CourseDto>  getCourseById(@PathVariable int id) {
        return ResponseEntity.status(HttpStatus.OK).body(courseService.getCourseById(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> updateCourseById(@PathVariable int id,
                                                   @RequestPart("course") CourseCreateForm form,
                                                   @RequestPart(value = "image", required = false) MultipartFile image) throws IOException {
        return ResponseEntity.status(HttpStatus.OK).body(courseService.updateCourseById(id, form, image));
    }

    @PutMapping(value = "/file", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<String> uploadFile(@RequestPart("file") MultipartFile file) throws IOException {
        return ResponseEntity.status(HttpStatus.CREATED).body(cloudinaryUpload.uploadImage(file));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteCourseById(@PathVariable int id) {
        return ResponseEntity.ok(courseService.deleteById(id));
    }
}
