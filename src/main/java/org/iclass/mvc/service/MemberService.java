package org.iclass.mvc.service;

import java.util.List;

import org.iclass.mvc.dao.MemberMapper;
import org.iclass.mvc.vo.Member;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	
	private final MemberMapper dao;
	
	public List<Member> selectAll(){
		return dao.selectAll();
	}
	
}
