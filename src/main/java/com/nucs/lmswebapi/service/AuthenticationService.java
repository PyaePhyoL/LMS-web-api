package com.nucs.lmswebapi.service;

import com.nucs.lmswebapi.dto.LoginForm;
import com.nucs.lmswebapi.dto.LoginResponse;
import com.nucs.lmswebapi.repository.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class AuthenticationService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;

    public LoginResponse login(LoginForm form) {
        var user = userRepository.findByEmail(form.userEmail()).orElseThrow(
                () -> new EntityNotFoundException(form.userEmail() + "  not found")
        );

        var isPasswordMatch = passwordEncoder.matches(form.password(), user.getPassword());
        log.info("==========> " + passwordEncoder.encode("12345"));
        if(!isPasswordMatch){
            throw new EntityNotFoundException("Wrong password");
        }

        return  new LoginResponse(jwtService.generateAccessToken(user));
    }
}
