package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.CartDAO;
import perfit.dto.CartVO;

public class PaymentFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] cart_num_arr = request.getParameterValues("sbVo_num");
		CartDAO cDao = CartDAO.getInstance();
		List<CartVO> cartList = cDao.selectCartByNumArr(cart_num_arr);

		request.setAttribute("cartList", cartList);

//		HttpSession session = request.getSession();
//		MemberVO mVo = (MemberVO)session.getAttribute("mVo");
//		request.setAttribute("mVo", mVo);

		String url = "SSJ/payment.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}