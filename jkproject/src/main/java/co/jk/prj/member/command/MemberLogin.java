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

public class MemberLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("ㅎㅇ");
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();

		HttpSession session = request.getSession(); // 서버가 만들어 보관하고 있는 세션객체 호출
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

		System.out.println("입력1");
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPassword(password);

		vo = dao.memberSelect(vo);
		
		System.out.println(vo);
		String message= null;
		if (vo != null) { // 로그인 성공
			// 성공시 세션에 담아줌
			session.setAttribute("memberId", vo.getMemberId());
			session.setAttribute("memberName", vo.getMemberName());
			session.setAttribute("memberPassword", vo.getMemberPassword());
			session.setAttribute("memberRole", vo.getMemberRole());
			session.setAttribute("memberPhone", vo.getMemberPhone());
			session.setAttribute("memberEmail", vo.getMemberEmail());
			session.setAttribute("memberAddress", vo.getMemberAddress());
			
			System.out.println("성공");
			message = vo.getMemberName() + "님 환영합니다.";
			
			return "main/homeMain.tiles";
		} else {
			message = "아이디 또는 패스워드가 틀립니다.";
			request.setAttribute("message", message);
			System.out.println("실패");
			return "member/loginPage.tiles";
		} 
	}

}
