package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.CartDAO;
import perfit.dto.CartVO;

public class PaymentCompleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] numArr = request.getParameterValues("cVo_num");
		System.out.println("@@@@@@@@@@@@@@@@@@@@@" + numArr);
		CartDAO cDao = CartDAO.getInstance();
		List<CartVO> cartList = cDao.selectCartByNumArr(numArr);

		String d_name = request.getParameter("d_name");
		String d_zip = request.getParameter("d_zip");
		String d_address1 = request.getParameter("d_address1");
		String d_address2 = request.getParameter("d_address2");
		String d_phone = request.getParameter("d_phone");
		String d_email = request.getParameter("d_email");

		request.setAttribute("cartList", cartList);
		request.setAttribute("d_name", d_name);
		request.setAttribute("d_zip", d_zip);
		request.setAttribute("d_address1", d_address1);
		request.setAttribute("d_address2", d_address2);
		request.setAttribute("d_phone", d_phone);
		request.setAttribute("d_email", d_email);

		String url = "SSJ/paymentCom.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		// ordernum 세션 정보 삭제
		// cart 테이블에 있던 거 삭제
		cDao.deleteCart(numArr);
	}
}