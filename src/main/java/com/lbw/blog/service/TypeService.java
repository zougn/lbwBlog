package com.lbw.blog.service;

import com.lbw.blog.po.Type;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;


/**
 * Created by IntelliJ IDEA.
 * User: ZouGn
 * Date: 10/1/21
 * Time: 11:23 PM
 * File: TypeService.java
 */
public interface TypeService {
    Type saveType(Type type);

    Type getType(Long id);

    Type getTypeByName(String name);

    Page<Type> listType(Pageable pageable);

    List<Type> listType();

    List<Type> listTypeTop(Integer size);

    Type updateType(Long id, Type type);

    void deleteType(Long id);

}
