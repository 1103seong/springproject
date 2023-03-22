package org.iclass.mvc.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
public class Member {
	private int mno;
	private String id;
	private String pw;
	private String name;
	private String phone;
	private String gender;
	private String auth;
}
