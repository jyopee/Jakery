package co.jk.prj.notice.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.PageVO;
import co.jk.prj.review.service.ReviewService;
import co.jk.prj.review.service.ReviewVO;
import co.jk.prj.review.serviceImpl.ReviewServiceImpl;

public class ReviewSearchPageList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 검색시 페이징
		// 첫페이지
		int pageNum = 1; // 조회 페이지 번호
		int amount = 10; // 한페이지 게시글 갯수

		// 페이지번호를 클릭하는 경우
		if(request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		
		
		String opt = request.getParameter("reSelectOpt");
		String val = request.getParameter("reviewInfo");

		ReviewService dao = new ReviewServiceImpl();
		List<ReviewVO> list = new ArrayList<ReviewVO>();

		
		if(val.equals(null)) {
			list = dao.reviewSearchList("all", val, pageNum, amount); 
			int total = dao.getSearchTotal("all", val);
			PageVO vo = new PageVO(pageNum, amount, total);
			// 페이지네이션을 화면에 전달
			request.setAttribute("pageVO", vo);
			
		}else if(opt.equals("prReviewTitle")) {
			list = dao.reviewSearchList("prReviewTitle", val, pageNum, amount);
			int total = dao.getSearchTotal("prReviewTitle", val);
			PageVO vo = new PageVO(pageNum, amount, total);
			// 페이지네이션을 화면에 전달
			request.setAttribute("pageVO", vo);
			
		}else if(opt.equals("memberName")) {
			list = dao.reviewSearchList("memberName", val, pageNum, amount);
			int total = dao.getSearchTotal("memberName", val);
			PageVO vo = new PageVO(pageNum, amount, total);
			// 페이지네이션을 화면에 전달
			request.setAttribute("pageVO", vo);
			
		}else if(opt.equals("memberId")) {
			list = dao.reviewSearchList("memberId", val, pageNum, amount);
			int total = dao.getSearchTotal("memberId", val);
			PageVO vo = new PageVO(pageNum, amount, total);
			// 페이지네이션을 화면에 전달
			request.setAttribute("pageVO", vo);
			
		}
		
;
		// 화면에 가지고 나갈 list를 request에 저장 !!
		request.setAttribute("list", list);
		
		//키와 벨류값
		request.setAttribute("val", val);
		request.setAttribute("key", opt);

	    

		return "notice/noticeReviewSearchForm.tiles";
	}

}
