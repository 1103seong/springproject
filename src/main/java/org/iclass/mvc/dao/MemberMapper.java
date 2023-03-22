package org.iclass.mvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.iclass.mvc.vo.Member;

@Mapper
public interface MemberMapper {
	
	public List<Member> selectAll();
}
