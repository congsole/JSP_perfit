package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import perfit.dto.MemberVO;

public class MemberWithdrawalFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "SSJ/memberwithdrawal.jsp";

		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("mVo");

		request.setAttribute("memInfo", mVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
