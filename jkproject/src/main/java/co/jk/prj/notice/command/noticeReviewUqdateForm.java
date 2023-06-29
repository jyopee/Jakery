package co.jk.prj.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.review.service.ReviewService;
import co.jk.prj.review.service.ReviewVO;
import co.jk.prj.review.serviceImpl.ReviewServiceImpl;

public class noticeReviewUqdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰 수정폼 호출
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		vo.setPrReviewId(Integer.parseInt(request.getParameter("prReviewId")));
		System.out.println("noticeReviewuqdateForm의 prqnaId: "+request.getParameter("prReviewId"));

		vo = dao.reviewSelect(vo);
		System.out.println(vo+"가 잇나요>");
		
		request.setAttribute("prReview", vo);
		
		return "notice/noticeReviewUqdateForm.tiles";
	}

}
