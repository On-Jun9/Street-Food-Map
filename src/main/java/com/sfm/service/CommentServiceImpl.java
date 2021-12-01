package com.sfm.service;

import com.sfm.mapper.BoardMapper;
import com.sfm.mapper.CommentMapper;
import com.sfm.model.BoardVO;
import com.sfm.model.CommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentMapper mapper;

    @Override
    public List<BoardVO> commentList(CommentVO vo) {
        return mapper.commentList(vo);
    }
}
