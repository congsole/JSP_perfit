package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.OrderDAO;
import perfit.dto.OrderDetailVO;

public class OrderDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "SSJ/orderDetail.jsp";
		String order_num = request.getParameter("order_num");
		OrderDAO oDao = OrderDAO.getInstance();
		List<OrderDetailVO> orderDetailList = oDao.orderDetailList(order_num);
		request.setAttribute("orderDetailList", orderDetailList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
