package co.jk.prj.review.service;

import java.util.List;

import co.jk.prj.qna.service.QnaVO;

public interface ReviewService {
	// 글 목록 출력
	List<ReviewVO> reviewSelectList(ReviewVO vo);

	// 글 단건 조회 =>아작스로 처리
	ReviewVO reviewSelect(ReviewVO vo);

	// 입력(멤버아이디 세션에서 넣기)
	int reviewInsert(ReviewVO vo);

	// 수정(멤버아이디 필요)
	int reviewUpdate(ReviewVO vo);

	// 삭제(멤버아이디 필요)
	int reviewDelete(ReviewVO vo);

	// 번호 업데이트
	int reviewIdUpdate(int id);

	// 조회수 증가
	void reviewHitUpdate(int id);

	// 게시글검색을 위해
	List<ReviewVO> reviewSearchList(String key, String val,int pageNum, int amount);
	
	//상품별 게시글 검색
	List<ReviewVO> reviewOneSearchList(int id, String key, String val);
	

	//페이징
	List<ReviewVO> getList(int pageNum, int amount);
		
	//전체 게시글 수 
	List<ReviewVO> getTotal();
	
	//검색 시 게시글 수
	int getSearchTotal(String key, String val);
}
