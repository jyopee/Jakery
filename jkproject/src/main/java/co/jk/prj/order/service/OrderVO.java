package co.jk.prj.order.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderVO {
	//주문번호
	private int prOrderId;
	//주문자
	private String memberId;
	//주문일시
	@JsonFormat(pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private Date prOrderDate;
	//주문상태
	private String prOrderState;
	private int prId;
	private int prAmount;
	private int prPrice;
	private String prName;
	
}
