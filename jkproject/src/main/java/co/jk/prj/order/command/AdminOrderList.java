package co.jk.prj.order.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;

public class AdminOrderList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "order/adminOrderList.tiles";
	}

}
