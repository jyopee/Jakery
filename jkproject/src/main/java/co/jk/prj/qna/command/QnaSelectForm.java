package co.jk.prj.qna.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;

public class QnaSelectForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 큐앤에이 상세보기 창 가기 
		QnaService qDao = new QnaServiceImpl();
		QnaVO qVo = new QnaVO();
		qVo.setPrQnaId(Integer.parseInt(request.getParameter("prQnaId")));
		System.out.println("qnaselectFrom 여기까지 넘어오나요> prQnaId"+request.getParameter("prQnaId"));
		qVo = qDao.qnaSelect(qVo);
		
		request.setAttribute("prQna", qVo);
		
		return "notice/qnaSelectForm.tiles";
	}

}
