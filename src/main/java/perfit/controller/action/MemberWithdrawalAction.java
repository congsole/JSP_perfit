package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import perfit.dao.MemberDAO;
import perfit.dto.MemberVO;

public class MemberWithdrawalAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "MemberServlet?command=member_withdrawal_form";
		
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("mVo");
		
		String userid = mVo.getId();
		String userpwd = request.getParameter("password");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.memCheck(userid, userpwd);
		
		if (result == 1) {
			mDao.withdrawalMember(mVo);
			//세션 말소
			session.invalidate();
			url = "MemberServlet?command=member_withdrawal_complete";
		} else if (result == 0) {
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		} else if (result == -1) {
			request.setAttribute("message", "비정상적인 접근입니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
