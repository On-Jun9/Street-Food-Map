package com.sfm.service;

import com.sfm.mapper.BoardMapper;
import com.sfm.model.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService{
    @Autowired
    private BoardMapper mapper;

    @Override
    public List<BoardVO> listView() {
        return mapper.listView();
    }

    @Override
    public int insertBoard(BoardVO vo) {
        return mapper.insertBoard(vo);
    }

    @Override
    public boolean updateBoard(BoardVO vo) {
        return mapper.updateBoard(vo);
    }

    @Override
    public boolean deleteBoard(int b_no) {
        return mapper.deleteBoard(b_no);
    }

}
