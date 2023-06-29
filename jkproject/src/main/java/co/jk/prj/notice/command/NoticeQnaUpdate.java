package co.jk.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;

public class NoticeQnaUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 글 수정

		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();
		vo.setPrQnaId(Integer.parseInt(request.getParameter("prQnaId")));
		System.out.println("qnaUpdqte의 큐앤에이 아이디> "+ request.getParameter("prQnaId"));
		vo.setPrQnaTitle(request.getParameter("prQnaTitle"));
		vo.setPrQnaSubject(request.getParameter("prQnaSubject"));
		vo.setPrQnaSecret(Integer.parseInt(request.getParameter("prQnaSecret")));
		
		dao.qnaUpdate(vo);
		
		vo = dao.qnaSelect(vo);
		System.out.println(vo+"가 잇나요>");
		
		request.setAttribute("prQna", vo);
		
		return "notice/noticeQnaSelectForm.tiles";
	}

}
