package co.jk.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.notice.service.NoticeService;
import co.jk.prj.notice.service.NoticeVO;
import co.jk.prj.notice.serviceImpl.NoticeServiceImpl;

public class NoticeEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();

		System.out.println("edit하는중");
		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId")));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		int result = dao.noticeUpdate(vo);
		System.out.println(vo);
		request.setAttribute("notice", result);
		System.out.println(request.getParameter("noticeId"));
		return "notice/noticelist.tiles";
	}

}
