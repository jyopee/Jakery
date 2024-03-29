package co.jk.prj.member.service;

import java.util.List;

public interface MemberService {
	List<MemberVO> memberSelectList(); 

	MemberVO memberSelect(MemberVO vo); 

	int memberInsert(MemberVO vo); 

	int memberDelete(MemberVO vo); 

	int memberUpdate(MemberVO vo); 

	boolean isIdCheck(String id);
}
