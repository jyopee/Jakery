package co.jk.prj.cart.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.cart.service.CartService;
import co.jk.prj.cart.service.CartVO;
import co.jk.prj.cart.serviceImpl.CartServiceImpl;
import co.jk.prj.common.Command;

public class CartAdd implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		CartVO vo = new CartVO(); // 삼품페이지정보를 담을 vo

		vo.setPrId(Integer.valueOf(request.getParameter("prId"))); // 상품페이지에서 상품아이디를 가져옴
		vo.setPrAmount(Integer.valueOf(request.getParameter("amount"))); // 상품페이지에서 수량을를 가져옴
		vo.setMemberId(request.getParameter("memberId")); // 상품페이지에서 멤버아이디를 가져옴

		String memberId = request.getParameter("memberId"); // 상품페이지에서 멤버 아이디를 가져옴
		int prId = Integer.valueOf(request.getParameter("prId"));
		// 상품페이지에서 제품 아이디를 가져옴

		CartService cDao = new CartServiceImpl();

		List<CartVO> list = cDao.cartSelectf(memberId);

		System.out.println(memberId);
		System.out.println(list);

		CartVO bo = new CartVO();

		for (int i = 0; i < list.size(); i++) {

			bo = list.get(i);
			int num = bo.getPrId(); // 조회한 장바구니 상품 아이디
			System.out.println(prId);
			System.out.println(num);

			if (prId == num) {
				cDao.cartDupUpdate(vo);
				return "cart/cartPage.tiles";
			} else {
				System.out.println("여기로 오나?");
			}
		}
		cDao.cartInsert(vo);
		request.setAttribute("cart", vo);
		
		return "cart/cartPage.tiles";

	}

}
