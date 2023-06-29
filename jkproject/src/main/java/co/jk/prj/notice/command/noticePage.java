package co.jk.prj.notice.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.notice.service.NoticeService;
import co.jk.prj.notice.service.NoticeVO;
import co.jk.prj.notice.serviceImpl.NoticeServiceImpl;

public class noticePage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	
		return "notice/noticelist.tiles";
	}

}
