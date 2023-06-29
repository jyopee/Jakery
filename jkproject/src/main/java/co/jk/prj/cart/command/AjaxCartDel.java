package co.jk.prj.cart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.cart.service.CartService;
import co.jk.prj.cart.service.CartVO;
import co.jk.prj.cart.serviceImpl.CartServiceImpl;
import co.jk.prj.common.Command;

public class AjaxCartDel implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CartVO vo = new CartVO();
		int prCartId = Integer.parseInt(request.getParameter("prCartId"));
		CartService service = new CartServiceImpl();
		vo.setPrCartId(prCartId);
		
		
		int delCnt = service.cartDelete(vo);
		String json = null;
		
		if(delCnt > 0) {
			//{"retCode":"Success", "id": id}
			json ="{\"retCode\":\"Success\", \"prCartId\": "+ prCartId + "}";
		}else {
			//{"retCode":"Fail"}
			json ="{\"retCode\":\"Fail\"}";
		}
		return "ajax:" + json;
	}


}
