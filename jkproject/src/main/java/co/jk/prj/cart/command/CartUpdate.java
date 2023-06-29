package co.jk.prj.cart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.cart.service.CartService;
import co.jk.prj.cart.service.CartVO;
import co.jk.prj.cart.serviceImpl.CartServiceImpl;
import co.jk.prj.common.Command;

public class CartUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		
		CartService service = new CartServiceImpl();
		CartVO vo = new CartVO();
		
		HttpSession session = request.getSession();
		String memberId = (String) session.getAttribute("memberId");
		vo.setMemberId(memberId);
		
		vo.setPrCartId(Integer.valueOf(request.getParameter("prCartId")));
		vo.setPrAmount(Integer.valueOf(request.getParameter("amount"))); // 제품 이미지

		int res = service.cartUpdate(vo);
		if(res == 1)
			response.setStatus(200);
		else
			response.setStatus(500);
		
		return "ajax:";
	}
/*
 * 
 * 
 */
}
