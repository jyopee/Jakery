package co.jk.prj.review.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	private int prReviewId;
	private String memberId;
	private int prId;
	private String prReviewTitle;
	private String prReviewSubject;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date prReviewDate;
	private int prReviewHit;
	private String prReviewStar;
	
	//조인시 보일 필드
	private String prImgName;
	private String prName;
	private String memberName;
}
