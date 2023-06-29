package co.jk.prj.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.product.service.ProductService;
import co.jk.prj.product.service.ProductVO;
import co.jk.prj.product.serviceImpl.ProductServiceImpl;
import co.jk.prj.qna.service.PageVO;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;

public class ProductSingle implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 상품 정보가진 후 페이지 이동
		// 제품 상세보기
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		vo.setPrId(Integer.parseInt(request.getParameter("prId")));
		System.out.println("produnctSingle의 prId: "+request.getParameter("prId"));
		vo = dao.productSelect(vo);
		request.setAttribute("product", vo);

		
		return "product/productSingle.tiles";
	}

}
