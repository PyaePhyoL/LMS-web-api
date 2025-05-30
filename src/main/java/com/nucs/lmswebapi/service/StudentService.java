package com.nucs.lmswebapi.service;

import com.nucs.lmswebapi.dto.PageResult;
import com.nucs.lmswebapi.dto.StudentDto;
import com.nucs.lmswebapi.dto.StudentInfoList;
import com.nucs.lmswebapi.dto.StudentRegisterForm;
import com.nucs.lmswebapi.model.AcademicYear;
import com.nucs.lmswebapi.model.Student;
import com.nucs.lmswebapi.model.User;
import com.nucs.lmswebapi.repository.AcademicYearRepository;
import com.nucs.lmswebapi.repository.StudentRepository;
import com.nucs.lmswebapi.repository.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
@RequiredArgsConstructor
@Transactional
public class StudentService {

    private final StudentRepository studentRepository;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final AcademicYearRepository academicYearRepository;
    private final CloudinaryUpload cloudinaryUpload;

    public String studentRegister(StudentRegisterForm form, MultipartFile image) throws IOException {
        User User = com.nucs.lmswebapi.model.User.builder()
                .email(form.getEmail())
                .password(passwordEncoder.encode(form.getPassword()))
                .role(form.getRole())
                .build();
        User savedUser = userRepository.save(User);

        AcademicYear academicYear = academicYearRepository.findById(form.getAcademicYearId()).orElse(null);
        Student student = Student.builder()
                .firstName(form.getFirstName())
                .lastName(form.getLastName())
                .gender(form.getGender())
                .dateOfBirth(form.getDateOfBirth())
                .firstJoinDate(form.getFirstJoinDate())
                .academicYear(academicYear)
                .user(savedUser)
                .active(true)
                .build();

        student.setImageUrl(cloudinaryUpload.uploadImage(image));

        studentRepository.save(student);

        return "Lecturer registered successfully";
    }

    public StudentDto getStudentDtoById(int id) {
        return studentRepository.findStudentDtoById(id)
                .orElseThrow(() -> new EntityNotFoundException("Student with id " + id + " not found"));
    }

    public StudentInfoList getStudentInfoByEmail(String email) {
        return studentRepository.findStudentInfoByEmail(email).orElse(null);
    }

    public PageResult<StudentInfoList> getAllStudentInfos(int page, int size) {
        var count = studentRepository.count();
        var students = studentRepository.findAllStudentInfos(PageRequest.of(page, size).withSort(Sort.by(Sort.Direction.DESC, "id")));
        return new PageResult<>(students, count, page, size);
    }

    public String deleteStudent(int id) {
        var student = studentRepository.findById(id).orElse(null);
        if (student != null) {
            studentRepository.delete(student);
            return "Student deleted successfully";
        }
        return "Student not found";
    }

    public String updateStudent(int id, StudentRegisterForm form, MultipartFile image) throws IOException {
        var student = studentRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("Student with id " + id + " not found"));
        var academicYear = academicYearRepository.findById(form.getAcademicYearId()).orElse(null);
        student.setFirstName(form.getFirstName());
        student.setLastName(form.getLastName());
        student.setGender(form.getGender());
        student.setDateOfBirth(form.getDateOfBirth());
        student.setFirstJoinDate(form.getFirstJoinDate());
        student.setAcademicYear(academicYear);
        student.setImageUrl(cloudinaryUpload.uploadImage(image));
        studentRepository.save(student);
        return "Student updated successfully";
    }
}
