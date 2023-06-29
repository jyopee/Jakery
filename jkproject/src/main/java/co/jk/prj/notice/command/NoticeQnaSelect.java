package co.jk.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;

public class NoticeQnaSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 큐앤에이 상세보기
				System.out.println(request.getParameter("prQnaId")+"넘어오나요?>?>??");
				QnaService dao = new QnaServiceImpl();
				QnaVO vo = new QnaVO();
				
				vo.setPrQnaId(Integer.parseInt(request.getParameter("prQnaId")));
				
				vo = dao.qnaSelect(vo);
				
				System.out.println(vo + "보이나용아아아아아아아아앙 QnaSelect");
				 request.setAttribute("prQna", vo);
			
				
				return "notice/noticeQnaSelectForm.tiles";
	}

}
