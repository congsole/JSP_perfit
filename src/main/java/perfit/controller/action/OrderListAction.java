package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import perfit.dao.OrderDAO;
import perfit.dto.MemberVO;
import perfit.dto.OrderVO;

public class OrderListAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "SSJ/orderList.jsp";
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("mVo");

		OrderDAO oDao = OrderDAO.getInstance();
		List<OrderVO> orderList = oDao.orderList(mVo.getId());

		request.setAttribute("orderList", orderList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}