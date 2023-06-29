package co.jk.prj.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.product.service.ProductService;
import co.jk.prj.product.service.ProductVO;
import co.jk.prj.product.serviceImpl.ProductServiceImpl;
import co.jk.prj.qna.service.CommentService;
import co.jk.prj.qna.service.CommentVO;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.CommentServiceImpl;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;
import co.jk.prj.review.service.ReviewService;
import co.jk.prj.review.service.ReviewVO;
import co.jk.prj.review.serviceImpl.ReviewServiceImpl;

public class ReviewDelete implements Command {

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
		
		//상품정보 호출
		ProductService pDao = new ProductServiceImpl();
		ProductVO pVo = new ProductVO();
		pVo.setPrId(Integer.parseInt(request.getParameter("prId")));
		System.out.println("Reviewdelete의 상품 아이디 > "+Integer.parseInt(request.getParameter("prId")));
		pVo = pDao.productSelect(pVo);
		request.setAttribute("product", pVo);
		
		return "product/productSingle.tiles";
	}

}
