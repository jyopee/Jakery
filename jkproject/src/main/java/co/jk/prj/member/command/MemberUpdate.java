package co.jk.prj.member.command;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jk.prj.common.AES256Util;
import co.jk.prj.common.Command;
import co.jk.prj.member.service.MemberService;
import co.jk.prj.member.service.MemberVO;
import co.jk.prj.member.serviceImpl.MemberServiceImpl;


public class MemberUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();

		String password = request.getParameter("memberPassword");
		if (password != "") {
			try {
				AES256Util aes = new AES256Util();
				try {
					password = aes.encrypt(password);
					vo.setMemberPassword(password);
				} catch (NoSuchAlgorithmException e) {
					e.printStackTrace();
				} catch (GeneralSecurityException e) {
					e.printStackTrace();
				}

			} catch (UnsupportedEncodingException e) {

				e.printStackTrace();
			}
		}
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPassword(password);
		
		vo.setMemberName(request.getParameter("memberName"));	
		vo.setMemberPhone(request.getParameter("memberPhone"));
		vo.setMemberEmail(request.getParameter("memberEmail"));
		System.out.println("memberEmail");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String addr3 = request.getParameter("addr3");
		String memberAddress = addr1 +" "+ addr2 +" "+ addr3;
		vo.setMemberAddress(memberAddress);
		int n = dao.memberUpdate(vo);
		System.out.println(n);
		if (n != 0) {
			session.setAttribute("memberId", vo.getMemberId());
			session.setAttribute("memberName", vo.getMemberName());
			session.setAttribute("memberPassword", vo.getMemberPassword());
			session.setAttribute("memberRole", vo.getMemberRole());
			session.setAttribute("memberPhone", vo.getMemberPhone());
			session.setAttribute("memberEmail", vo.getMemberEmail());
			session.setAttribute("memberAddress", vo.getMemberAddress());
			
			request.setAttribute("message", "회원정보가 수정되었습니다.");
		} else {
			request.setAttribute("message", "회원정보가 수정 실패");
		}
		return "main/homeMain.tiles";
	}

}
