package com.sfm.service;

import com.sfm.mapper.BoardMapper;
import com.sfm.model.BoardVO;
import com.sfm.model.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
    @Autowired
    private BoardMapper mapper;

    @Override
    public MemberVO userLogin(MemberVO vo) {
        return mapper.userLogin(vo);
    }

    @Override
    public int signUpUser(MemberVO vo) {
        return mapper.signUpUser(vo);
    }
}
