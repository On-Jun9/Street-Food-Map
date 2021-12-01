package com.sfm.service;

import com.sfm.model.BoardVO;
import com.sfm.model.CommentVO;

import java.util.List;

public interface CommentService {

    public List<BoardVO> commentList(CommentVO vo);
}
