package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.OrderDAO;
import perfit.dto.CartVO;

public class ShoppingBasketFormAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "SSJ/shoppingBasket.jsp";
		
		OrderDAO oDao = OrderDAO.getInstance();
		List<CartVO> sbList = oDao.shoppingBasketList();		
		request.setAttribute("sbList", sbList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
