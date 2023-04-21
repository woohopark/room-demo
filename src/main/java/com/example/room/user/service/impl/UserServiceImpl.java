package com.example.room.user.service.impl;

import com.example.room.common.config.auth.constants.AuthRoleStatus;
import com.example.room.user.dao.UserDAO;
import com.example.room.user.dto.UserDto;
import com.example.room.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.function.Supplier;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserDAO userDAO;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public UserDto join(UserDto userDto) {
        userDto.setPassword(bCryptPasswordEncoder.encode(userDto.getPassword()));
        UserDto result = userDAO.join(userDto);
        return result;
    }

}