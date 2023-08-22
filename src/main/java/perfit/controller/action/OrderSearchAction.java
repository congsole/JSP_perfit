package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.OrderDAO;
import perfit.dto.OrderVO;

public class OrderSearchAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "SSJ/orderList.jsp";
		OrderDAO oDao = OrderDAO.getInstance();
		
		String sf = request.getParameter("searchField");
		String st = request.getParameter("searchText");
		String ds = request.getParameter("dateStart");
		String dl = request.getParameter("dateLast");
		
		String on = "order_num";
		String od = "order_date";
		
		if (sf.equals(on)) {
			List<OrderVO> orderSearchList = oDao.orderSearchByCondition(sf,st);
			request.setAttribute("orderList", orderSearchList);
		} else if (sf.equals(od)) {
			List<OrderVO> orderSearchList = oDao.orderSearchByDate(ds,dl);
			request.setAttribute("orderList", orderSearchList);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}