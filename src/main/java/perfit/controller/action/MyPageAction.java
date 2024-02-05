package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import perfit.dao.OrderDAO;
import perfit.dto.MemberVO;

public class MyPageAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "SSJ/myPage.jsp";
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("mVo");

		String memId = mVo.getId();
		OrderDAO oDao = OrderDAO.getInstance();

		int count = oDao.getStatusCount(memId);
		request.setAttribute("all", count);

		int count1 = oDao.getStatusCount1(memId);
		request.setAttribute("first", count1);

		int count2 = oDao.getStatusCount2(memId);
		request.setAttribute("second", count2);

		int count3 = oDao.getStatusCount3(memId);
		request.setAttribute("third", count3);

		// request.setAttribute("status", 1);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}