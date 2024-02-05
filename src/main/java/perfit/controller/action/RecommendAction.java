package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.ProductDAO;
import perfit.dao.ProductPictureDAO;
import perfit.dto.ProductPictureVO;
import perfit.dto.ProductVO;
import perfit.dto.PageVO;

public class RecommendAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String shape = request.getParameter("shape");
		
		int pageNum = 1;
		int amount = 12;
		
		if(request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductVO> productList = pDao.recommendListWithPaging(pageNum, amount, shape);
		PageVO pageVO = new PageVO(pageNum, amount, productList.size());
		
		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		List<ProductPictureVO> pictureList = ppDao.selectAllPictures();
		
		request.setAttribute("shape", shape);
		request.setAttribute("pageVO", pageVO);
		request.setAttribute("productList", productList);
		request.setAttribute("pictureList", pictureList);
		
		String url = "/SHS/productRecommend.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
