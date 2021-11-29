package com.sfm.mapper;

import com.sfm.model.BoardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {
    public List<BoardVO> listView();
    public int insertBoard(BoardVO vo);
    public BoardVO contentView(BoardVO vo);
}
