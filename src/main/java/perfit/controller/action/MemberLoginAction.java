package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import perfit.dao.MemberDAO;
import perfit.dto.MemberVO;


public class MemberLoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String url = "ProductServlet?command=member_login_form";
		String id = request.getParameter("id");
		String pw = request.getParameter("password");

		MemberDAO mDao = MemberDAO.getInstance();

		int result = mDao.memCheck(id, pw);
		System.out.println("action의 result 값:" + result + "받아옴");
		if (result == 1) {
			// 여기서 세션에 로그인상태 심어주면 됨.
			MemberVO mVo = mDao.getMember(id);
			HttpSession session = request.getSession();
			session.setAttribute("mVo", mVo);
			request.setAttribute("message", "로그인 성공");
			url = "ProductServlet?command=main";
		} else if (result == 0) {
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		} else if (result == -1) {
			request.setAttribute("message", "존재하지 않는 아이디입니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
