package co.jk.prj.review.command;

import java.util.ArrayList;
import java.util.List;

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

public class ReviewSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰 검색
		ReviewService dao = new ReviewServiceImpl();
		List<ReviewVO> list = new ArrayList<ReviewVO>();

		String opt = request.getParameter("reSelectOpt");
		String val = request.getParameter("reviewInfo");
		System.out.println("opt이랑 key" + opt + "," + val);

		ObjectMapper mapper = new ObjectMapper();
		String json = null;

		int id = Integer.parseInt(request.getParameter("prId"));

		if (val.equals(null)) {
			list = dao.reviewOneSearchList(id, "all", val);
		} else if (opt.equals("prReviewTitle")) {
			list = dao.reviewOneSearchList(id, "prReviewTitle", val);
		} else if (opt.equals("memberName")) {
			list = dao.reviewOneSearchList(id, "memberName", val);
		} else if (opt.equals("memberId")) {
			list = dao.reviewOneSearchList(id, "memberId", val);
		}
		

		if (list.isEmpty()) {
			json = "{\"result\":\"게시글이 없습니다.\"}";
		} else {
			try {
				json = mapper.writeValueAsString(list);
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}
			System.out.println("reviewListAjax의 json" + json);

		}
		return "ajax:" + json;
	}

}
