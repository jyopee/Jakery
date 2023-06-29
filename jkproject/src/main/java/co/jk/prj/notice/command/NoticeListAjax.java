package co.jk.prj.notice.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.common.Command;
import co.jk.prj.notice.service.NoticeService;
import co.jk.prj.notice.service.NoticeVO;
import co.jk.prj.notice.serviceImpl.NoticeServiceImpl;

public class NoticeListAjax implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// "{"name":"홍길동", "age": 20} : json포맷.
	
 		NoticeService service = new NoticeServiceImpl();
 		List<NoticeVO> list = service.noticeSelectList();
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
