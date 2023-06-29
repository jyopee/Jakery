package co.jk.prj.qna.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.CommentService;
import co.jk.prj.qna.service.CommentVO;
import co.jk.prj.qna.serviceImpl.CommentServiceImpl;

public class CommentUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 답글 업댓
		
		CommentService dao = new CommentServiceImpl();
		CommentVO vo = new CommentVO();
		
		vo.setPrQnaComId(Integer.parseInt(request.getParameter("prQnaComId")));
		vo.setPrQnaComSubject(request.getParameter("prQnaComSubject"));
		System.out.println("답글 내용 수정되나여ㅛ?"+request.getParameter("prQnaComSubject"));
		
		int n = dao.commentUpdate(vo);
		ObjectMapper mapper = new ObjectMapper();
		String json = null;

		if (n > 0) {
			vo = dao.commentSelect(vo);
			//json포맷으로 바꿔줌
			try {
				json = mapper.writeValueAsString(vo);
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "ajax:" + json;
		}
		return "ajax:" + "{\"retCode\": \"Fail\"}";

}
}
