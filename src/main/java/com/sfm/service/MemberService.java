package com.sfm.service;

import com.sfm.model.BoardVO;
import com.sfm.model.MemberVO;

public interface MemberService {

    public MemberVO userLogin(MemberVO vo);
    public int signUpUser(MemberVO vo);
}
