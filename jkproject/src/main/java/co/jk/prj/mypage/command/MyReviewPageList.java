package co.jk.prj.mypage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.PageVO;
import co.jk.prj.review.service.ReviewService;
import co.jk.prj.review.service.ReviewVO;
import co.jk.prj.review.serviceImpl.ReviewServiceImpl;

public class MyReviewPageList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 내 리뷰
		// 첫페이지
		int pageNum = 1; // 조회 페이지 번호
		int amount = 10; // 한페이지 게시글 갯수

		// 페이지번호를 클릭하는 경우
		if(request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
        String memberId = request.getParameter("memberId");
		ReviewService dao = new ReviewServiceImpl();
		List<ReviewVO> list = dao.getList(pageNum, amount);
		List<ReviewVO> totalList = dao.getTotal();
		List<ReviewVO> totalVOList = new ArrayList<ReviewVO>();
		for(ReviewVO vo : totalList ) {
			if(vo.getMemberId().equals(memberId)) {
				totalVOList.add(vo);
			}
		}
		
		int total = totalVOList.size();
		PageVO vo = new PageVO(pageNum, amount, total);
		
		// 페이지네이션을 화면에 전달
		request.setAttribute("pageVO", vo);
		// 화면에 가지고 나갈 list를 request에 저장 !!
		request.setAttribute("list", list);

	    

		return "myPage/myReviewListForm.tiles";
	}

}
