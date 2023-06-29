package co.jk.prj.qna.service;

import java.util.List;

public interface CommentService {
	//게시답글 선택(큐앤에이 부를때 같이)
	List<CommentVO> commentSelectList(CommentVO vo);
	
	//답글하나 선택
	CommentVO commentSelect(CommentVO vo);
		
	//답글 입력(관리자만 가능)
	int commentInsert(CommentVO vo);
	
	//수정(관리자만 가능)
	int commentUpdate(CommentVO vo);
	
	//삭제(관리자만 가능)
	int commnetDelete(CommentVO vo);
	
	
}
