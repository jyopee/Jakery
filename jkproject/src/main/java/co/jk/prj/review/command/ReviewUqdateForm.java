package co.jk.prj.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;
import co.jk.prj.review.service.ReviewService;
import co.jk.prj.review.service.ReviewVO;
import co.jk.prj.review.serviceImpl.ReviewServiceImpl;

public class ReviewUqdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰 수정폼 호출
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		vo.setPrReviewId(Integer.parseInt(request.getParameter("prReviewId")));
		System.out.println("ReviewuqdateForm의 prqnaId: "+request.getParameter("prReviewId"));

		vo = dao.reviewSelect(vo);
		System.out.println(vo+"가 잇나요>");
		
		request.setAttribute("prReview", vo);
		
		return "notice/ReviewUqdateForm.tiles";
	}

}
