package com.nucs.lmswebapi.service;

import com.nucs.lmswebapi.dto.LecturerDto;
import com.nucs.lmswebapi.dto.LecturerInfoList;
import com.nucs.lmswebapi.dto.LecturerRegisterForm;
import com.nucs.lmswebapi.dto.PageResult;
import com.nucs.lmswebapi.model.Lecturer;
import com.nucs.lmswebapi.model.User;
import com.nucs.lmswebapi.repository.LecturerRepository;
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
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class LecturerService {

    private final PasswordEncoder passwordEncoder;
    private final UserRepository userRepository;
    private final LecturerRepository lecturerRepository;
    private final CloudinaryUpload cloudinaryUpload;

    public String lecturerRegister(LecturerRegisterForm form, MultipartFile image) throws IOException {
        User User = com.nucs.lmswebapi.model.User.builder()
                .email(form.getEmail())
                .password(passwordEncoder.encode(form.getPassword()))
                .role(form.getRole())
                .build();
        User savedUser = userRepository.save(User);

        Lecturer lecturer = Lecturer.builder()
                .firstName(form.getFirstName())
                .lastName(form.getLastName())
                .dateOfBirth(form.getDateOfBirth())
                .gender(form.getGender())
                .academicTitle(form.getAcademicTitle())
                .firstJoinDate(form.getFirstJoinDate())
                .active(true)
                .user(savedUser)
                .build();

        lecturer.setImageUrl(cloudinaryUpload.uploadImage(image));

        lecturerRepository.save(lecturer);

        return "Lecturer registered successfully";
    }

    public PageResult<LecturerInfoList> getAllLecturers(int page, int size) {
        var count = lecturerRepository.count();
        var lecturers = lecturerRepository.findAllLecturerInfoList(PageRequest.of(page, size).withSort(Sort.by(Sort.Direction.DESC, "id")));
        return new PageResult<>(lecturers, count, page, size);
    }

    public LecturerDto getLecturerById(int id) {
        return lecturerRepository.findLecturerById(id)
                .orElseThrow(() -> new EntityNotFoundException("Lecturer with id " + id + " not found!"));
    }

}
