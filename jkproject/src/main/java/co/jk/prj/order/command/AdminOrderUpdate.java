package co.jk.prj.order.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


import co.jk.prj.common.Command;
import co.jk.prj.order.service.OrderService;
import co.jk.prj.order.service.OrderVO;
import co.jk.prj.order.serviceImpl.OrderServiceImpl;

public class AdminOrderUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderService dao = new OrderServiceImpl();
		OrderVO vo = new OrderVO();
		
		vo.setPrOrderId(Integer.valueOf(request.getParameter("prOrderId")));
		vo.setPrOrderState(request.getParameter("prOrderState"));
		
		int n = dao.orderUpdate(vo);
		System.out.println(n);
		
		ObjectMapper mapper = new ObjectMapper();
 		
 		String json = null;
		try {
			
			json = mapper.writeValueAsString(vo);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return "ajax:" +json;
	}

}
