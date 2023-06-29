package co.jk.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jk.prj.common.Command;
import co.jk.prj.member.service.MemberService;
import co.jk.prj.member.service.MemberVO;
import co.jk.prj.member.serviceImpl.MemberServiceImpl;

public class MemberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원삭제
		HttpSession session = request.getSession();
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();

		vo.setMemberId(request.getParameter("memberId"));
		int n = dao.memberDelete(vo);
		System.out.println(n);
		session.invalidate();
		if (n != 0) {
			return "main.do";
		} else {
			request.setAttribute("message", "회원정보 삭제가 실패했습니다.");
			return "member/memberUpdateForm.tiles";
		}
	}

}
