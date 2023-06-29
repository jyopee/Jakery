package co.jk.prj.cart.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class CartVO {
	
	private int prId;
	private int prReviewId;
	private int prEventId;
	private String prImgName;
	private String prImgPath;
	
	private int prCartId;
	private String memberId;
	private int prAmount;
	
	private int prCategoryId;
	private int prHit;
	private String prName;
	private Date prDate;
	private int prPrice;
	private int total;
}
