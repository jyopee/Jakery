package co.jk.prj.order.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.common.Command;
import co.jk.prj.order.service.OrderService;
import co.jk.prj.order.service.OrderVO;
import co.jk.prj.order.serviceImpl.OrderServiceImpl;

public class OrderListAjax implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		OrderService service = new OrderServiceImpl();
		HttpSession session = request.getSession();
		OrderVO vo = new OrderVO();
		
		String memberId = (String) session.getAttribute("memberId");
		vo.setMemberId(memberId);
		List<OrderVO> list = service.orderSelect(vo);
 		
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
