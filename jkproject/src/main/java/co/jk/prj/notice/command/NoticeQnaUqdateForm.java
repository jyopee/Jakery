package co.jk.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;

public class NoticeQnaUqdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 답글수정폼 호출

		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();
		vo.setPrQnaId(Integer.parseInt(request.getParameter("prQnaId")));
		System.out.println("QnauqdateForm의 prqnaId: "+request.getParameter("prQnaId"));

		vo = dao.qnaSelect(vo);
		System.out.println(vo+"가 잇나요>");
		
		request.setAttribute("prQna", vo);
		
		return "notice/noticeQnaUqdateForm.tiles";
	}

}
