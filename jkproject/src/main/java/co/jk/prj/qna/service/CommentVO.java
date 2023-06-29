package co.jk.prj.qna.service;





import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommentVO {
	private int prQnaComId;
	private String memberId;
	private int prQnaId;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date prQnaComDate;
	private String prQnaComSubject;
}	
