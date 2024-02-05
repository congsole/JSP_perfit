package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import perfit.dto.MemberVO;

public class MemberUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/SSJ/memberupdate.jsp";

		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("mVo"); // 로그인상태이므로 세션에 저장되어있는 mVo객체 가져옴.

		request.setAttribute("memInfo", mVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}