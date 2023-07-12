package com.lbw.blog.dao;

import com.lbw.blog.po.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by IntelliJ IDEA.
 * User: ZouGn
 * Date: 9/29/21
 * Time: 11:15 PM
 * File: UserRepository.java
 */
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsernameAndPassword(String username, String password);
}
