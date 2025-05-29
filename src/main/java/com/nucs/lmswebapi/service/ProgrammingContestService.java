package com.nucs.lmswebapi.service;

import com.nucs.lmswebapi.dto.PageResult;
import com.nucs.lmswebapi.dto.ProgrammingContestDto;
import com.nucs.lmswebapi.mapper.ProgrammingContestMapper;
import com.nucs.lmswebapi.repository.ProgrammingContestsRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ProgrammingContestService {

    private final ProgrammingContestsRepository programmingContestsRepository;
    private final CloudinaryUpload cloudinaryUpload;

    public String createContest(ProgrammingContestDto form, MultipartFile image) throws IOException {
        var contest = ProgrammingContestMapper.toProgrammingContest(form);
        contest.setImageUrl(cloudinaryUpload.uploadImage(image));
        programmingContestsRepository.save(contest);
        return "New Programming Contest Created";
    }

    public List<ProgrammingContestDto> getLatestContests() {
        return programmingContestsRepository.findLatestContest();
    }

    public ProgrammingContestDto getContestById(int id) {
        return programmingContestsRepository.findProgrammingContestById(id)
                .orElseThrow(() -> new EntityNotFoundException("Programming Contest with id " + id + " not found"));
    }

    public String updateContest(int id, ProgrammingContestDto form, MultipartFile image) throws IOException {
        var contest = programmingContestsRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("Programming Contest with id " + id + " not found"));
        contest.setTitle(form.getTitle());
        contest.setDescription(form.getDescription());
        contest.setStartDate(form.getStartDate());
        contest.setImageUrl(cloudinaryUpload.uploadImage(image));
        programmingContestsRepository.save(contest);
        return "Programming Contest Updated";
    }

    public String deleteContestById(int id) {
        var contest =  programmingContestsRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("Programming Contest with id " + id + " not found"));
        if(contest != null) {
            programmingContestsRepository.delete(contest);
            return "Programming Contest Deleted Successfully";
        }
        return "Programming Contest Not Found";
    }

    public PageResult<ProgrammingContestDto> getAllContests(int page, int size) {
        var count = programmingContestsRepository.count();
        var contests = programmingContestsRepository.findAllContests(PageRequest.of(page, size).withSort(Sort.by(Sort.Direction.DESC, "startDate")));
        return new PageResult<>(contests, count, page, size);
    }
}
