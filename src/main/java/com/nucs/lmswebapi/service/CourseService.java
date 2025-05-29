package com.nucs.lmswebapi.service;

import com.nucs.lmswebapi.dto.CourseCreateForm;
import com.nucs.lmswebapi.dto.CourseDto;
import com.nucs.lmswebapi.dto.CourseListItem;
import com.nucs.lmswebapi.mapper.CourseMapper;
import com.nucs.lmswebapi.model.AcademicYear;
import com.nucs.lmswebapi.model.Course;
import com.nucs.lmswebapi.model.Lecturer;
import com.nucs.lmswebapi.model.enums.Semester;
import com.nucs.lmswebapi.repository.AcademicYearRepository;
import com.nucs.lmswebapi.repository.CourseRepository;
import com.nucs.lmswebapi.repository.LecturerRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class CourseService {

    private final CourseRepository courseRepository;
    private final AcademicYearRepository academicYearRepository;
    private final CloudinaryUpload cloudinaryUpload;
    private final LecturerRepository lecturerRepository;


    public String createCourse(CourseCreateForm form, MultipartFile file) throws IOException {
        Course course = CourseMapper.toCourse(form);
        course.setAcademicYear(academicYearRepository.findById(form.getAcademicYearId()).orElse(null));
        course.setLecturer(lecturerRepository.findById(form.getLecturerId()).orElse(null));
        course.setImageUrl(cloudinaryUpload.uploadImage(file));
        courseRepository.save(course);
        return "Course created successfully";
    }

    public CourseDto getCourseById(int id) {
        CourseDto courseDto = courseRepository.findById(id)
                .map(CourseMapper::toCourseDto)
                .orElseThrow(() -> new EntityNotFoundException("Course not found"));
        log.info(courseDto.toString());
        return courseDto;
    }

    public List<CourseListItem> getCourseList() {
        return courseRepository.findAllCourseListItems();
    }

    public String updateCourseById(int id, CourseCreateForm form, MultipartFile image) throws IOException {
        Course course = courseRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("Course not found"));
        AcademicYear academicYear = academicYearRepository.findById(form.getAcademicYearId()).orElse(null);
        Lecturer lecturer = lecturerRepository.findById(form.getLecturerId()).orElse(null);
        course.setCourseCode(form.getCourseCode());
        course.setName(form.getName());
        course.setDescription(form.getDescription());
        course.setAcademicYear(academicYear);
        course.setSemester(form.getSemester());
        course.setReferenceLinks(form.getReferenceLinks());
        course.setLecturer(lecturer);
        course.setImageUrl(cloudinaryUpload.uploadImage(image));
        courseRepository.save(course);
        return "Course updated successfully";
    }

    public List<CourseDto> getCourseListByYearAndSemester(int yearId, Semester semester) {
        var academicYear = academicYearRepository.findById(yearId).orElse(null);
        return courseRepository.findByAcademicYear(academicYear)
                .stream()
                .filter(course -> course.getSemester() == semester)
                .map(CourseMapper::toCourseDto)
                .toList();
    }

    public String deleteById(int id) {
        var  course = courseRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("Course not found"));
        courseRepository.delete(course);
        return "Course deleted successfully";
    }
}
