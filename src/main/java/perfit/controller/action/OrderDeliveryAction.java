package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.OrderDAO;

public class OrderDeliveryAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrderDAO oDao = OrderDAO.getInstance();
		String ordernum = request.getParameter("ordernum");
		oDao.delivery(ordernum);
		
		String url = "OrderServlet?command=order_manage";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
 