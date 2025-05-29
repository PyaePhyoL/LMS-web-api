package com.nucs.lmswebapi.service;

import com.nucs.lmswebapi.dto.NewsDto;
import com.nucs.lmswebapi.dto.PageResult;
import com.nucs.lmswebapi.mapper.NewsMapper;
import com.nucs.lmswebapi.model.News;
import com.nucs.lmswebapi.repository.NewsRepository;
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
public class NewsService {

    private final NewsRepository newsRepository;
    private final CloudinaryUpload cloudinaryUpload;

    public String createNews(NewsDto form, MultipartFile file) throws IOException {
        News news = NewsMapper.toNews(form);
        news.setImageUrl(cloudinaryUpload.uploadImage(file));
        newsRepository.save(news);
        return "News Created Successfully";
    }

    public List<NewsDto> getLatestNews() {
        return newsRepository.findLatestNews();
    }

    public NewsDto getNewsById(int id) {
        return newsRepository.findNewsDtoById(id).orElseThrow(() -> new EntityNotFoundException("News not found"));
    }

    public String updateNews(int id, NewsDto form, MultipartFile file) throws IOException {
        News news = newsRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("News not found"));
        news.setTitle(form.getTitle());
        news.setDescription(form.getDescription());
        news.setImageUrl(cloudinaryUpload.uploadImage(file));
        newsRepository.save(news);
        return "News Updated Successfully";
    }

    public String deleteNewsById(int id) {
        var news = newsRepository.findById(id).orElse(null);
        if(news != null) {
            newsRepository.delete(news);
            return "News Deleted Successfully";
        }
        return "News already Deleted";
    }

    public PageResult<NewsDto> getAllNews(int page, int size) {
        var count = newsRepository.count();
        var news = newsRepository.findAllNews(PageRequest.of(page, size).withSort(Sort.by(Sort.Direction.DESC, "createdAt")));
        return new PageResult<>(news, count, page, size);
    }
}
