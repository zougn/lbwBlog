package com.lbw.blog.service;

import com.lbw.blog.po.User;

/**
 * Created by IntelliJ IDEA.
 * User: ZouGn
 * Date: 9/29/21
 * Time: 11:13 PM
 * File: UserService.java
 */
public interface UserService {
    User checkUser(String username, String password);
}
