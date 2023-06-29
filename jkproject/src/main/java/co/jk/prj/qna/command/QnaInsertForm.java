package co.jk.prj.qna.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.product.service.ProductService;
import co.jk.prj.product.service.ProductVO;
import co.jk.prj.product.serviceImpl.ProductServiceImpl;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;

public class QnaInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 큐앤에이 작성 폼으로 간다.
	
		String prId = request.getParameter("prId");
		System.out.println("QnaInsertForm의 prId: "+request.getParameter("prId"));
		request.setAttribute("prId", prId);
		
		
		return "notice/qnaInserForm.tiles";
	}

}
