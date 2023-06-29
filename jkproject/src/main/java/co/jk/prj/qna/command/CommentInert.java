package co.jk.prj.qna.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.CommentService;
import co.jk.prj.qna.service.CommentVO;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.CommentServiceImpl;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;

public class CommentInert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 답글작성디비저장
			CommentService dao = new CommentServiceImpl();
			CommentVO vo = new CommentVO();

			vo.setMemberId(request.getParameter("memberId"));
			vo.setPrQnaId(Integer.parseInt(request.getParameter("prQnaId")));
			vo.setPrQnaComSubject(request.getParameter("prQnaComSubject"));
			System.out.println("추가");
			int n = dao.commentInsert(vo);
	
			String json = null;
			if (n > 0) {
				json = "{\"result\": \"Success\"}"; // json포멧
			} else {
				json = "{\"result\": \"Fail\"}";
			}
			
			return "ajax:" + json;

	}

}
