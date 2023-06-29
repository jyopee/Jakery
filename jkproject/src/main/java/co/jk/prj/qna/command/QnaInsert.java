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

public class QnaInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 큐앤에이 작성
		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();

		System.out.println(request.getParameter("prQnaSuject")+"내용값(QnaInsert부분)");
		System.out.println(request.getParameter("prQnaTitle")+"제목값(QnaInsert부분)?");
		System.out.println(request.getParameter("prId")+"아이디값(QnaInsert부분)?");
		System.out.println(request.getParameter("prQnaSecret")+"비밀글(QnaInsert부분)?");
		vo.setPrId(Integer.parseInt(request.getParameter("prId")));
		vo.setMemberId(request.getParameter("memberId"));
		vo.setPrQnaTitle(request.getParameter("prQnaTitle"));
		vo.setPrQnaSubject(request.getParameter("prQnaSubject"));
		vo.setPrQnaSecret(Integer.parseInt(request.getParameter("prQnaSecret")));
		int n = dao.qnaInsert(vo);
		
		ProductService prDao = new ProductServiceImpl();
		ProductVO prVo = new ProductVO();
		prVo.setPrId(Integer.parseInt(request.getParameter("prId")));
		prVo = prDao.productSelect(prVo);
		
		if(n > 0) {
			request.setAttribute("product", prVo);
			return "product/productSingle.tiles";
		}else {
			request.setAttribute("message", "공지사항 등록실패했습니다.");
			return "product/productSingle.tiles";
		}
	}

}
