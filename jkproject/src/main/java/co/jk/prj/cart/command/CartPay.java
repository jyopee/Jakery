package co.jk.prj.cart.command;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jk.prj.cart.service.CartService;
import co.jk.prj.cart.service.CartVO;
import co.jk.prj.cart.serviceImpl.CartServiceImpl;
import co.jk.prj.common.Command;



public class CartPay implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		CartService service = new CartServiceImpl();
		
		CartVO vo = new CartVO();
		HttpSession session = request.getSession();
		String memberId = (String) session.getAttribute("memberId");
		vo.setMemberId(memberId);
		
 		List<CartVO> carts = service.cartSelect(vo);

		return "check/cartCheckForm.tiles";
		
	}

}
