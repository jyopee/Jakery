package co.jk.prj.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;

public class QnaSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// qna게시글 검색
		QnaService dao = new QnaServiceImpl();
		List<QnaVO> list = new ArrayList<QnaVO>();
		
		String opt = request.getParameter("selectOpt");
		String val = request.getParameter("searchInfo");
		System.out.println("opt이랑 key" + opt +","+val);
		
        ObjectMapper mapper = new ObjectMapper(); 
		String json = null;
	
		int id = Integer.parseInt(request.getParameter("prId"));
		
		if(opt.equals(null)) {
			list = dao.qnaOneSearchList(id, "all", val);
		}else if(opt.equals("prQnaTitle")) {
			list = dao.qnaOneSearchList(id, "prQnaTitle", val);
		}else if(opt.equals("memberName")) {
			list = dao.qnaOneSearchList(id, "memberName", val);
		}else if(opt.equals("memberId")) {
			list = dao.qnaOneSearchList(id, "memberId", val);
		}
		
		
		if(list.isEmpty()) {
			json = "{\"result\":\"게시글이 없습니다.\"}";
		}else {
			try {
				json = mapper.writeValueAsString(list);
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			} 
			System.out.println("QnaListAjax의 json"+ json);
			
			
	}
		return "ajax:" + json;

	}
}
