package co.jk.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.notice.service.NoticeService;
import co.jk.prj.notice.service.NoticeVO;
import co.jk.prj.notice.serviceImpl.NoticeServiceImpl;

public class NoticeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("올까요");
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId")));
		System.out.println(vo);
		
		int n = dao.noticeDelete(vo);
		dao.noticeIdUpdate(vo);
		if( n != 0) {
			return "notice/noticelist.tiles";
		}else {
			request.setAttribute("message", "글 삭제를 실패했습니다.");
			return "notice/noticeSelectList.tiles";
		}
	
	}
}