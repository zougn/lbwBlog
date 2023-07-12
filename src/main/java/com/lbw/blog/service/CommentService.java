package com.lbw.blog.service;

import com.lbw.blog.po.Comment;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: ZouGn
 * Date: 10/18/21
 * Time: 6:47 PM
 * File: CommentService.java
 */
public interface CommentService {
    List<Comment> listCommentByBlogId(Long blogId);

    Comment saveComment(Comment comment);
}
