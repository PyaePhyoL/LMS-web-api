package com.nucs.lmswebapi.service;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Map;

@Slf4j
@Configuration
public class CloudinaryConfig {

    @Value("${cloudinary.url}")
    private String cloudinaryUrl;
    @Value("${cloudinary.api-key}")
    private String apiKey;
    @Value("${cloudinary.api-secret}")
    private String apiSecret;
    @Value("${cloudinary.cloud-name}")
    private String cloudName;

    @Bean
    public Cloudinary cloudinary() {
        Cloudinary cloudinary = new Cloudinary(cloudinaryUrl);
        cloudinary.config.secure = true;
        cloudinary.config.apiKey = this.apiKey;
        cloudinary.config.apiSecret = this.apiSecret;
        cloudinary.config.cloudName = this.cloudName;

        return cloudinary;
    }
}
