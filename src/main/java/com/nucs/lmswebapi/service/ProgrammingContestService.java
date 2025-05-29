package com.nucs.lmswebapi.service;

import com.nucs.lmswebapi.dto.ProgrammingContestDto;
import com.nucs.lmswebapi.mapper.ProgrammingContestMapper;
import com.nucs.lmswebapi.repository.ProgrammingContestsRepository;
import lombok.RequiredArgsConstructor;
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
        cloudinaryUpload.uploadImage(image);
        programmingContestsRepository.save(contest);
        return "New Programming Contest Created";
    }

    public List<ProgrammingContestDto> getLatestContests() {
        return programmingContestsRepository.findLatestContest();
    }
}
