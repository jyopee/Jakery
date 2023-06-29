package co.jk.prj.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;

public class ReviewInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//리뷰작성
		String prId = request.getParameter("prId");
		System.out.println("reviewInsertForm의 prId: "+request.getParameter("prId"));
		request.setAttribute("prId", prId);
		
		
		return "notice/reviewInsertForm.tiles";
	}

}
