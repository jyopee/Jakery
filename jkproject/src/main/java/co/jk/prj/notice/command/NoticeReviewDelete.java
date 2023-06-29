package co.jk.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.review.service.ReviewService;
import co.jk.prj.review.service.ReviewVO;
import co.jk.prj.review.serviceImpl.ReviewServiceImpl;

public class NoticeReviewDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//리뷰삭제
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		
		//글삭제 + 댓글삭제 + 번호 업댓
		int id = Integer.parseInt(request.getParameter("prReviewId"));
		System.out.println("ReviewDelete에서 큐앤에이아이디 > " + id);
		vo.setPrReviewId(id);
		dao.reviewDelete(vo);
		dao.reviewIdUpdate(id);
		
		return "reviewPageList.do";
	}

}
