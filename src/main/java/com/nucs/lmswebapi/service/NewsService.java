package com.nucs.lmswebapi.service;

import com.nucs.lmswebapi.repository.NewsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class NewsService {

    private final NewsRepository newsRepository;


//    public String createNews(NewsDto form) {
//
//    }
}
