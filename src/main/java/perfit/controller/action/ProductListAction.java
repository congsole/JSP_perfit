package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import perfit.dao.ProductDAO;
import perfit.dao.ProductPictureDAO;
import perfit.dto.MemberVO;
import perfit.dto.PageVO;
import perfit.dto.ProductPictureVO;
import perfit.dto.ProductVO;



public class ProductListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// url 만들기
		String url = "";

		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO)session.getAttribute("mVo");
		
		if(mVo == null) {
			url = "/SHS/productList.jsp";			
		}else if(mVo.getId().contains("perfit")) {
			url = "/SHS/productListAdmin.jsp";
		} else {
			url = "/SHS/productList.jsp";
		}
		
		
		// paging variables
		/* 첫 페이지의 경우 */
		int pageNum = 1;
		int amount = 12;
		/* 페이지 번호를 클릭하는 경우 */
		if(request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		
		// type, product, productPicture
		String type = request.getParameter("type");
		String category = request.getParameter("category");
		
		ProductDAO pDao = ProductDAO.getInstance();
		int total = pDao.thisTypeTotal(type);
		PageVO pageVO = new PageVO(pageNum, amount, total);
		
		List<ProductVO> productList;
		
		if(category == null || category.equals("")) {
			productList = pDao.getListWithPaging(pageNum, amount, type);
		} else {
			productList = pDao.getListWithPaging(pageNum, amount, type, category);
		}
		
		
		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		List<ProductPictureVO> pictureList = ppDao.selectAllPictures();
		

		request.setAttribute("type", type);
		request.setAttribute("category", category);
		request.setAttribute("pageVO", pageVO);
		request.setAttribute("productList", productList);
		request.setAttribute("pictureList", pictureList);
		

		// dispatcher
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
