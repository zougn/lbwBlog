package com.lbw.blog.service;

import com.lbw.blog.dao.UserRepository;
import com.lbw.blog.po.User;
import com.lbw.blog.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

/**
 * Created by IntelliJ IDEA.
 * User: ZouGn
 * Date: 9/29/21
 * Time: 11:25 PM
 * File: UserServiceImpl.java
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;

    @Override
    public User checkUser(String username, String password) {
//        User user = userRepository.findByUsernameAndPassword(username, DigestUtils.md5DigestAsHex(password.getBytes()));
        User user = userRepository.findByUsernameAndPassword(username, MD5Utils.code(password));
        return user;
    }

}
