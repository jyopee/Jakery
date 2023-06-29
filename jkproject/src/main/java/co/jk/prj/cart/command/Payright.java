package co.jk.prj.cart.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.cart.service.CartVO;

import co.jk.prj.common.Command;
import co.jk.prj.product.service.ProductService;
import co.jk.prj.product.service.ProductVO;
import co.jk.prj.product.serviceImpl.ProductServiceImpl;

public class Payright implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// 삼품페이지정보를 담을 vo

		System.out.println("여기까지 왔어요");

		ProductVO vo = new ProductVO();
		CartVO bo = new CartVO();

		bo.setPrAmount(Integer.valueOf(request.getParameter("amount")));
		bo.setPrPrice(Integer.valueOf(request.getParameter("price")));

		System.out.println(request.getParameter("amount"));
		System.out.println(request.getParameter("price"));

		vo.setPrId(Integer.valueOf(request.getParameter("prId")));
		
		ProductService Dao = new ProductServiceImpl();
		vo = Dao.productSelect(vo);
		System.out.println(vo);

		request.setAttribute("product", vo);
		request.setAttribute("cart", bo);

		return "check/checkForm.tiles";
	}

}
