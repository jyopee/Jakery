package co.jk.prj.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.product.service.ProductService;
import co.jk.prj.product.service.ProductVO;
import co.jk.prj.product.serviceImpl.ProductServiceImpl;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;
import co.jk.prj.review.service.ReviewService;
import co.jk.prj.review.service.ReviewVO;
import co.jk.prj.review.serviceImpl.ReviewServiceImpl;

public class ReviewInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰작성 
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();

		System.out.println(request.getParameter("prReviewSuject")+"내용값(ReviewInsert부분)");
		System.out.println(request.getParameter("prReviewTitle")+"제목값(ReviewInsert부분)?");
		System.out.println(request.getParameter("prId")+"아이디값(ReviewInsert부분)?");
		System.out.println(request.getParameter("prReviewSecret")+"비밀글(ReviewInsert부분)?");
		System.out.println(request.getParameter("prReviewStar")+"비밀글(prReviewStar부분)?");
		
		
		vo.setPrId(Integer.parseInt(request.getParameter("prId")));
		vo.setMemberId(request.getParameter("memberId"));
		vo.setPrReviewTitle(request.getParameter("prReviewTitle"));
		vo.setPrReviewSubject(request.getParameter("prReviewSubject"));
		vo.setPrReviewStar(request.getParameter("prReviewStar"));
		int n = dao.reviewInsert(vo);
		
		ProductService prDao = new ProductServiceImpl();
		ProductVO prVo = new ProductVO();
		prVo.setPrId(Integer.parseInt(request.getParameter("prId")));
		prVo = prDao.productSelect(prVo);
		
		if(n > 0) {
			request.setAttribute("product", prVo);
			return "product/productSingle.tiles";
		}else {
			request.setAttribute("message", "리뷰 등록실패했습니다.");
			return "product/productSingle.tiles";
		}
	}

}
