package co.jk.prj.order.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.common.Command;
import co.jk.prj.order.service.OrderService;
import co.jk.prj.order.service.OrderVO;
import co.jk.prj.order.serviceImpl.OrderServiceImpl;

public class AdminOrderListAjax implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderService service = new OrderServiceImpl();
		

		
 		List<OrderVO> list = service.orderSelectList();
 		ObjectMapper mapper = new ObjectMapper();
 		
 		String json = null;
		try {
			
			json = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return "ajax:" +json;
	}

}
