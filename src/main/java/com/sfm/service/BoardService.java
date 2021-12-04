package com.sfm.service;

import com.sfm.model.BoardVO;
import com.sfm.utils.PagingVO;

import java.util.List;

public interface BoardService {
    public List<BoardVO> listView();
    public int insertBoard(BoardVO vo);
    public boolean updateBoard(BoardVO vo);
    public boolean deleteBoard(int seq);

    // 게시물 총 갯수
    public int countBoard();

    // 페이징 처리 게시글 조회
    public List<BoardVO> selectBoard(PagingVO vo);


}
