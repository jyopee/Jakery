package co.jk.prj.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.CommentService;
import co.jk.prj.qna.service.CommentVO;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.CommentServiceImpl;

public class SelectComment implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 답글 불러오기 아작스 호출
		CommentService dao = new CommentServiceImpl();
		List<CommentVO> list = new ArrayList<CommentVO>();
		CommentVO vo = new CommentVO();
		System.out.println("slectComment의 prQnaId>  " + request.getParameter("prQnaId"));
		vo.setPrQnaId(Integer.parseInt(request.getParameter("prQnaId")));
		list = dao.commentSelectList(vo);
		
        ObjectMapper mapper = new ObjectMapper(); 
		
        //json을 문자열로
		String json = null;
		try {
			json = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		} 
		System.out.println("QnaListAjax의 json"+ json);
		
		
		return "ajax:" + json;
	}

}
