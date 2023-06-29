package co.jk.prj.qna.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface QnaService {
	//글 목록 출력 
	List<QnaVO> qnaSelectList(QnaVO vo);
	
	//글 단건 조회(comment 조인) => 비밀글/공개글(jsp에서)
	QnaVO qnaSelect(QnaVO vo);
	
	//입력(멤버아이디 세션에서 넣기) /비밀글 여부 vo에 담기
	int qnaInsert(QnaVO vo);
	
	//수정(멤버아이디 필요)
	int qnaUpdate(QnaVO vo);
	
	//삭제(멤버아이디 필요)
	int qnaDelete(QnaVO vo);
	
	//번호 업데이트
	int qnaIdUpdate(int id);
	
	//조회수 증가
	void qnaHitUpdate(int id);
	
	//게시글검색을 위해
	List<QnaVO> qnaSearchList(String key, String val, int pageNum, int amount); 
	
	//상품별 게시글 검색
	List<QnaVO> qnaOneSearchList(int id, String key, String val);
	
	//페이징
	List<QnaVO> getList(int pageNum, int amount);
	
	//전체 게시글 수 
	List<QnaVO> getTotal();
	
	//검색 시 게시글 수
	int getSearchTotal(String key, String val);
}
