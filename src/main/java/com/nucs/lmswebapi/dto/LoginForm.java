package com.nucs.lmswebapi.dto;

public record LoginForm(
        String userEmail,
        String password
) {
}

