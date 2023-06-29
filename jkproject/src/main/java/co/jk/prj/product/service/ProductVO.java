package co.jk.prj.product.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	private int prId;
	private int prCategoryId;
	private int prEventId;
	private int prHit;
	private String prName;
	private Date prDate;
	private int prPrice;
	
	private String prImgName;
	private String prImgDetail;
}
