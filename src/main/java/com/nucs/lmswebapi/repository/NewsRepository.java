package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.dto.NewsDto;
import com.nucs.lmswebapi.model.News;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface NewsRepository extends JpaRepository<News, Integer> {

    @Query("""
    select new com.nucs.lmswebapi.dto.NewsDto(
    n.id,
    n.title,
    n.description,
    n.imageUrl,
    n.createdAt,
    n.createdBy
    )
    from News n
    where n.id = :id
""")
    Optional<NewsDto>  findNewsDtoById(Integer id);
}
