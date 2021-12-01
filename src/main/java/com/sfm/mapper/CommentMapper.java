package com.sfm.mapper;

import com.sfm.model.BoardVO;
import com.sfm.model.CommentVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommentMapper {

    //댓글 불러오기
    public List<BoardVO> commentList(CommentVO vo);
}
