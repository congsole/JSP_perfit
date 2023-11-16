package perfit.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.ProductDAO;
import perfit.dao.ProductPictureDAO;
import perfit.dto.CartVO;
import perfit.dto.ProductPictureVO;
import perfit.dto.ProductVO;

public class DirectBuyFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		String mid = request.getParameter("mid");
		int amount = Integer.parseInt(request.getParameter("amount"));
		String color = request.getParameter("color");
		String size = request.getParameter("size");

		ProductDAO pDao = ProductDAO.getInstance();
		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		ProductVO pVo = pDao.selectOneProductById(pid);
		ProductPictureVO ppVo = ppDao.selectPicturesById(pid);
		
		CartVO cVo = new CartVO();
		cVo.setMid(mid);
		cVo.setPid(pVo.getid());
		cVo.setImg(ppVo.getModel1());
		cVo.setName(pVo.getname());
		cVo.setAmount(amount);
		cVo.setColor(color);
		cVo.setSize(size);
//		System.out.println(request.getParameter("color")+"/"+request.getParameter("size"));
//		cVo.setOption(request.getParameter("option"));
		cVo.setPrice(pVo.getprice());
		
		
		List<CartVO> cartList = new ArrayList<>();
		cartList.add(cVo);
		request.setAttribute("cartList", cartList);

		String url = "SSJ/payment.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
