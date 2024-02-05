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

public class HeaderSearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword = request.getParameter("word");

		ProductDAO pDao = ProductDAO.getInstance();
		
		int pageNum = 1;
		int amount = 12;
		if(request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		List<ProductVO> productList = pDao.headerSearch(pageNum, amount, keyword);
		int total = pDao.headerSearchSize(keyword);
	
		PageVO pageVO = new PageVO(pageNum, amount, total);
		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		List<ProductPictureVO> pictureList = ppDao.selectAllPictures();
		
		
		request.setAttribute("command", "header_search");
		request.setAttribute("pageVO", pageVO);
		request.setAttribute("keyword", keyword);
		request.setAttribute("productList", productList);
		request.setAttribute("pictureList", pictureList);
		
		String url = "/SHS/productSearchList.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
