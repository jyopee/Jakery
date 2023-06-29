package co.jk.prj.member.command;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.jk.prj.common.AES256Util;
import co.jk.prj.common.Command;



public class MemberUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		 
		String password = (String) session.getAttribute("memberPassword"); 
		if (password != "") {
			try {
				AES256Util aes = new AES256Util();
				try {
					password = aes.decrypt(password);
					
				} catch (NoSuchAlgorithmException e) {
					e.printStackTrace();
				} catch (GeneralSecurityException e) {
					e.printStackTrace();
				}

			} catch (UnsupportedEncodingException e) {

				e.printStackTrace();
			}
		}
		request.setAttribute("password", password);
		
		return "member/memberUpdateForm.tiles";
	}

}
