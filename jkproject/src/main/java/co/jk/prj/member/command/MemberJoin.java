package co.jk.prj.member.command;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.AES256Util;
import co.jk.prj.common.Command;
import co.jk.prj.member.service.MemberService;
import co.jk.prj.member.service.MemberVO;
import co.jk.prj.member.serviceImpl.MemberServiceImpl;


public class MemberJoin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원가입 처리
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();

		String password = request.getParameter("memberPassword");
		try {
			AES256Util aes = new AES256Util();
			try {
				password = aes.encrypt(password);
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			} catch (GeneralSecurityException e) {
				e.printStackTrace();
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}	
		
		int n = 0;

		String message = null;  //메세지
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String addr3 = request.getParameter("addr3");
		String memberAddress = addr1 +" "+ addr2 +" "+ addr3;
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPassword(password);
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberPhone(request.getParameter("memberPhone"));
		vo.setMemberEmail(request.getParameter("memberEmail"));
		vo.setMemberAddress(memberAddress);
		
		n = dao.memberInsert(vo);

		if(n != 0) {
			return "login.do";
		}else {
			message = "회원가입이 실패했습니다.";
		}
		request.setAttribute("message", message);
		
		return "member/memberJoin.tiles";
	}

}
