package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.CartDAO;
import perfit.dao.ProductDAO;
import perfit.dao.ProductPictureDAO;
import perfit.dto.CartVO;
import perfit.dto.ProductPictureVO;
import perfit.dto.ProductVO;

public class ShoppingBasketDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] numArr = request.getParameterValues("sbVo_num");

		CartDAO cDao = CartDAO.getInstance();
		cDao.deleteCart(numArr);

		String url = "ProductServlet?command=shoppingBasket_form";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
