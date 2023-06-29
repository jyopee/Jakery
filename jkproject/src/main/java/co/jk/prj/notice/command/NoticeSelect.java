package co.jk.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.notice.service.NoticeService;
import co.jk.prj.notice.service.NoticeVO;
import co.jk.prj.notice.serviceImpl.NoticeServiceImpl;

public class NoticeSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		

		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId")));
		vo = dao.noticeSelect(vo);
		System.out.println(vo);
		System.out.println("세부조회");
		request.setAttribute("notice", vo);
		
		return "notice/noticeSelectList.tiles";
	}

}
