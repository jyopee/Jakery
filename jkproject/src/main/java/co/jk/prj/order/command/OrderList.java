package co.jk.prj.order.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jk.prj.common.Command;

public class OrderList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		 
		String memberId = (String) session.getAttribute("memberId");
		request.setAttribute("memberId", memberId);
		return "order/orderList.tiles";
	}

}
