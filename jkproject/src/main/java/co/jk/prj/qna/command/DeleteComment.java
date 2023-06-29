package co.jk.prj.qna.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.CommentService;
import co.jk.prj.qna.service.CommentVO;
import co.jk.prj.qna.serviceImpl.CommentServiceImpl;

public class DeleteComment implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 답글삭제
		CommentService dao = new CommentServiceImpl();
		CommentVO vo = new CommentVO();
		
		vo.setPrQnaComId(Integer.parseInt(request.getParameter("prQnaComId")));
//		vo.setPrQnaComId(Integer.parseInt(request.getParameter("prQnaId")));
		System.out.println("deletecomment 의 코맨트 아이디 > " + request.getParameter("prQnaComId"));
		int n = dao.commnetDelete(vo);
		String json = null;
		if (n > 0) {
			json = "{\"result\": \"Success\"}"; // json포멧
		} else {
			json = "{\"result\": \"Fail\"}";
		}
		return "ajax:" + json;
	}

}
