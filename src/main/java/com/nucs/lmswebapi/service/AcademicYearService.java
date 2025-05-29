package com.nucs.lmswebapi.service;

import com.nucs.lmswebapi.dto.AcademicYearDto;
import com.nucs.lmswebapi.dto.AcademicYearListItem;
import com.nucs.lmswebapi.mapper.AcademicYearMapper;
import com.nucs.lmswebapi.model.AcademicYear;
import com.nucs.lmswebapi.repository.AcademicYearRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AcademicYearService {

    private final AcademicYearRepository academicYearRepository;

    public String createAcademicYear(AcademicYearDto dto) {
        AcademicYear academicYear = AcademicYearMapper.toAcademicYear(dto);
        academicYearRepository.save(academicYear);
        return "Academic Year Created Successfully";
    }

    public AcademicYearDto getAcademicYearById(int id) {
        return academicYearRepository.findAcademicYearDtoById(id)
                .orElseThrow(() -> new EntityNotFoundException("Academic Year with id " + id + " not found"));
    }

    public List<AcademicYearListItem> getAcademicYearList() {
        return academicYearRepository.findAllAcademicYearListItems();
    }
}
