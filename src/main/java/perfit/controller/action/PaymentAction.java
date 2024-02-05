package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.CartDAO;
import perfit.dao.OrderDAO;
import perfit.dto.CartVO;
import perfit.dto.OrderDetailVO;
import perfit.dto.OrderVO;

public class PaymentAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrderDAO oDao = OrderDAO.getInstance();

		OrderDetailVO odVo = null;

		// order_tbl 테이블에 입력 (전체적인 것들)
		OrderVO oVo = new OrderVO();
		// oVo.setOrder_num(null); 시퀀스 쓸거임
		oVo.setM_id(request.getParameter("mid"));
		oVo.setD_name(request.getParameter("d_name"));
		oVo.setD_phone(request.getParameter("d_phone"));
		oVo.setD_zip(request.getParameter("d_zip"));
		oVo.setD_address1(request.getParameter("d_address1"));
		oVo.setD_address2(request.getParameter("d_address2"));
		oVo.setD_email(request.getParameter("d_email"));
		// oVo.setOrder_date((Timestamp)request.getAttribute("")); sysdate할꺼임
		// oVo.setD_date(); 배송시작하면 업데이트 할 값임.
		oDao.addOrder(oVo);
		String order_num = oDao.getLatesOrdertNum();
		System.out.println(order_num);

		// order_detail 테이블에 입력 (상품 하나하나)
		String[] numArr = request.getParameterValues("cVo_num");
		CartDAO cDao = CartDAO.getInstance();
		List<CartVO> cartList = cDao.selectCartByNumArr(numArr);

		System.out.println("cartList : " + cartList);

		for (CartVO cVo : cartList) {
			odVo = new OrderDetailVO();
			// odVo.setOrder_detail_num(); 이거는 시퀀스로 만들것
			odVo.setOrder_num(order_num);
			odVo.setP_id(cVo.getPid());
			odVo.setP_img(cVo.getImg());
			odVo.setP_name(cVo.getName());
			odVo.setP_amount(cVo.getAmount());
			odVo.setP_color(cVo.getColor());
			odVo.setP_size(cVo.getSize());
			// odVo.setP_option(cVo.get);
			odVo.setP_price(cVo.getPrice());
			oDao.addOrderDetail(odVo);
			System.out.println("price : " + cVo.getPrice());
		}

		String url = "ProductServlet?command=payment_complete";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}
}