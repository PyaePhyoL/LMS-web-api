package com.nucs.lmswebapi.repository;

import com.nucs.lmswebapi.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {
}
