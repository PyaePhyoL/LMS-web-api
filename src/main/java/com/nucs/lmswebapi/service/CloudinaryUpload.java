package com.nucs.lmswebapi.service;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class CloudinaryUpload {

    private final Cloudinary cloudinary;

    public String uploadImage(MultipartFile file) throws IOException {

        if(file == null || file.isEmpty()) {
            return null;
        }
        Map params1 = ObjectUtils.asMap(
                "use_filename", true,
                "unique_filename", false,
                "overwrite", true
        );

        byte[] fileBytes = file.getBytes();

        Map<?,?> uploadResult = cloudinary.uploader().upload(fileBytes, params1);

        return uploadResult.get("url").toString();
    }
}
