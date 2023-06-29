package co.jk.prj.check.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.order.service.OrderService;
import co.jk.prj.order.service.OrderVO;
import co.jk.prj.order.serviceImpl.OrderServiceImpl;

public class kakao implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderVO bo = new OrderVO();

		bo.setPrAmount(Integer.valueOf(request.getParameter("prouductAmount")));

		bo.setPrId(Integer.valueOf(request.getParameter("prouductId")));
		bo.setMemberId(request.getParameter("memberId"));

		request.setAttribute("order", bo);

		OrderService dao = new OrderServiceImpl();

		dao.orderInsert(bo);
		return "check/kakao.tiles";
	}

}
