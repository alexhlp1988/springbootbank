package com.springboot.bank.mapper;

import com.springboot.bank.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

//@Repository
public interface UserMapper {
    User findByUsername(@Param("username") String username);
}
