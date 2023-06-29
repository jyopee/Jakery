package co.jk.prj.qna.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.review.service.ReviewVO;

public interface QnaMapper {
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
	
	//번호 업데이트(삭제시 같이)
	public int qnaIdUpdate(int id);
		
	//조회수 증가
	void qnaHitUpdate(int id);
		
	//게시글검색을 위해
	List<QnaVO> qnaSearchList(@Param("key") String key, @Param("val") String val, @Param("pageNum") int pageNum, @Param("amount") int amount); 
	
	//상품별 게시글 검색
	List<QnaVO> qnaOneSearchList(@Param("id") int id, @Param("key") String key, @Param("val") String val);
	
	//페이징
	List<QnaVO> getList(@Param("pageNum") int pageNum, @Param("amount") int amount );

	
	//전체 게시글 수 
	List<QnaVO> getTotal();
	
	//검색 시 게시글 수
	int getSearchTotal(@Param("key") String key, @Param("val") String val);
}
