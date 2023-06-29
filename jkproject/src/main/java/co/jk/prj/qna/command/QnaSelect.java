package co.jk.prj.qna.command;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.CommentService;
import co.jk.prj.qna.service.CommentVO;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.CommentServiceImpl;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;

public class QnaSelect implements Command {


	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 큐앤에이 상세보기
		System.out.println(request.getParameter("prQnaId")+"넘어오나요?>?>??");
		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();
		
		vo.setPrQnaId(Integer.parseInt(request.getParameter("prQnaId")));
		
		vo = dao.qnaSelect(vo);
		
		CommentService cDao = new CommentServiceImpl();
		List<CommentVO> list = new ArrayList<CommentVO>();
		CommentVO cVo = new CommentVO();
		
		cVo.setPrQnaId(Integer.parseInt(request.getParameter("prQnaId")));
		list = cDao.commentSelectList(cVo);
		
		System.out.println(vo + "보이나용아아아아아아아아앙 QnaSelect");
		 request.setAttribute("prQna", vo);
		 request.setAttribute("prQnaCom", cVo);
	
		
		return "notice/qnaSelectForm.tiles";
	}

}
