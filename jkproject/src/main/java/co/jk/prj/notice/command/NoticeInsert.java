package co.jk.prj.notice.command;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.notice.service.NoticeService;
import co.jk.prj.notice.service.NoticeVO;
import co.jk.prj.notice.serviceImpl.NoticeServiceImpl;

public class NoticeInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("입력");
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();

		//System.out.println(Date.valueOf(request.getParameter("noticeDate")));
		//vo.setNoticeDate(Date.valueOf(request.getParameter("noticeDate")));
		vo.setNoticeTitle(request.getParameter("noticeT"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		System.out.println(request.getParameter("noticeT"));
		System.out.println(request.getParameter("noticeSubject"));
		

		int n = dao.noticeInsert(vo);
		if (n != 0) {
			return "notice/noticelist.tiles";
		} else {
			return "notice/noticeInsertForm.tiles";
		}
	}

}
