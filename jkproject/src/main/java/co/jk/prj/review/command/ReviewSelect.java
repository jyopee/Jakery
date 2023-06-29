package co.jk.prj.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;
import co.jk.prj.review.service.ReviewService;
import co.jk.prj.review.service.ReviewVO;
import co.jk.prj.review.serviceImpl.ReviewServiceImpl;

public class ReviewSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰 상세보기
		System.out.println(request.getParameter("prReviewId")+"넘어오나요?>?>??");
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		
		vo.setPrReviewId(Integer.parseInt(request.getParameter("prReviewId")));
		
		vo = dao.reviewSelect(vo);
		
		System.out.println(vo + "보이나용아아아아아아아아앙 ReviewSelect");
		 
		 request.setAttribute("prReview", vo);
			
			
			return "notice/reviewSelectForm.tiles";
	}

}
