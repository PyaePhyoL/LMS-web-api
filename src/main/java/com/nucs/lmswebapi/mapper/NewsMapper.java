package com.nucs.lmswebapi.mapper;

import com.nucs.lmswebapi.dto.NewsDto;
import com.nucs.lmswebapi.model.News;

public class NewsMapper {

    private NewsMapper() {
    }

    public static News toNews(NewsDto form) {
        return News.builder()
                .title(form.getTitle())
                .description(form.getDescription())
                .build();
    }
}
