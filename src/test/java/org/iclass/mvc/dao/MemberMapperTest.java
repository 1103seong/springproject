package org.iclass.mvc.dao;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.iclass.mvc.service.MemberService;
import org.iclass.mvc.vo.Member;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
public class MemberMapperTest {
	
	@Autowired
	private MemberService service;
	
	@Test
	public void test() {
		List<Member> list = service.selectAll();
		log.info("----------------------");
		log.info("list = " + list.get(0));
		log.info("list = " + list.get(1));
		log.info("list = " + list.get(2));
		log.info("----------------------");
		assertNotNull(list);
	}
	
}
