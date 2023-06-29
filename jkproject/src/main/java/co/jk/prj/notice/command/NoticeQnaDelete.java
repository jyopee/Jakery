package co.jk.prj.notice.command;

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

public class NoticeQnaDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시물 삭제
		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();
		CommentService cDao = new CommentServiceImpl();
		CommentVO cVo = new CommentVO();

		// 글삭제 + 댓글삭제 + 번호 업댓
		int id = Integer.parseInt(request.getParameter("prQnaId"));
		System.out.println("qnaDelete에서 큐앤에이아이디 > " + id);
		vo.setPrQnaId(id);
		cVo.setPrQnaId(id);
		dao.qnaDelete(vo);
		cDao.commnetDelete(cVo);
		dao.qnaIdUpdate(id);

		return "qnaPageList.do";
	}

}
