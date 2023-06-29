package co.jk.prj.notice.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.jk.prj.common.Command;
import co.jk.prj.qna.service.PageVO;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.qna.serviceImpl.QnaServiceImpl;

public class QnaSearchPageList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 큐앤에이 검색 페이징
		// 첫페이지
		int pageNum = 1; // 조회 페이지 번호
		int amount = 10; // 한페이지 게시글 갯수

		// 페이지번호를 클릭하는 경우
		if(request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		
		String opt = request.getParameter("selectOpt");
		String val = request.getParameter("searchInfo");

		QnaService dao = new QnaServiceImpl();
		List<QnaVO> list = dao.getList(pageNum, amount);

		
		if(opt.equals(null)) {
			list = dao.qnaSearchList("all", val, pageNum, amount);
			int total = dao.getSearchTotal("all", val);
			PageVO vo = new PageVO(pageNum, amount, total);
			request.setAttribute("pageVO", vo);
			
		}else if(opt.equals("prQnaTitle")) {
			list = dao.qnaSearchList("prQnaTitle", val, pageNum, amount);
			int total = dao.getSearchTotal("prQnaTitle", val);
			PageVO vo = new PageVO(pageNum, amount, total);
			request.setAttribute("pageVO", vo);
			
		}else if(opt.equals("memberName")) {
			list = dao.qnaSearchList("memberName", val, pageNum, amount);
			int total = dao.getSearchTotal("memberName", val);
			PageVO vo = new PageVO(pageNum, amount, total);
			request.setAttribute("pageVO", vo);
			
		}else if(opt.equals("memberId")) {
			list = dao.qnaSearchList("memberId", val, pageNum, amount);
			int total = dao.getSearchTotal("memberId", val);
			PageVO vo = new PageVO(pageNum, amount, total);
			request.setAttribute("pageVO", vo);
			
		}
		
	
		// 화면에 가지고 나갈 list를 request에 저장 !!
		request.setAttribute("list", list);
		
		//키와 벨류값
		request.setAttribute("val", val);
		request.setAttribute("key", opt);
		
		return "notice/noticeQnaListSearchForm.tiles";
	}

}
