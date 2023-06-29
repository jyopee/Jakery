package co.jk.prj.qna.service;




import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QnaVO {
	//qna_commnet vo랑 서비스는 qna패키지 안에 넣자.
	//(상품 + 상품 옵션도 하나에)
	//주문옵션과 주문상세조회도 하나로 
	
	//상품문의 테이블 필드
	private int prQnaId;
	private int prId;
	private String memberId;
	private String prQnaTitle;
	private String prQnaSubject;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date prQnaDate;
	private int prQnaHit;
	private int prQnaSecret;

	
	//조인시 보일 필드
	private String prImgName;
	private String prName;
	private String memberName;
	
	
	
	
	
}
