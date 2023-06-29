package co.jk.prj.notice.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO {
	private int noticeId;
	private String noticeTitle;
	private String noticeSubject;
	private String noticeWriter;
	@JsonFormat(pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private Date noticeDate;
	private int noticeHit;
}
