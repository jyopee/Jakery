package co.jk.prj.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;


public class QnaListAjax implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리스트 출력
		QnaService dao = new QnaServiceImpl();
		List<QnaVO> list = new ArrayList<QnaVO>();
		QnaVO vo = new QnaVO();
		
		String id = request.getParameter("prId");
		System.out.println("QnaListAjax의 prId:"+id);
		
		if(id==null) {
			int prId = 0;
			vo.setPrId(prId);
		}else {
			vo.setPrId(Integer.parseInt(id));
		}
		
		list = dao.qnaSelectList(vo);
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
