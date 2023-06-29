package co.jk.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.review.service.ReviewService;
import co.jk.prj.review.service.ReviewVO;
import co.jk.prj.review.serviceImpl.ReviewServiceImpl;

public class NoticeReviewUqdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰수정
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		
		vo.setPrReviewId(Integer.parseInt(request.getParameter("prReviewId")));
		System.out.println("ReviewUpdqte의 큐앤에이 아이디> "+ request.getParameter("prReviewId"));
		vo.setPrReviewTitle(request.getParameter("prReviewTitle"));
		vo.setPrReviewSubject(request.getParameter("prReviewSubject"));
		vo.setPrReviewStar(request.getParameter("prReviewStar"));
		dao.reviewUpdate(vo);
		
		vo = dao.reviewSelect(vo);
		System.out.println(vo+"가 잇나요>");

		
		request.setAttribute("prReview", vo);
		
		return "notice/noticeReviewSelectForm.tiles";
	}

}
