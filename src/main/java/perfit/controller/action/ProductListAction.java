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
import perfit.dto.Criteria;
import perfit.dto.MemberVO;
import perfit.dto.PageDTO;
import perfit.dto.ProductPictureVO;
import perfit.dto.ProductVO;



public class ProductListAction implements Action {
	Criteria cri = new Criteria();
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		request.setAttribute("type", type);
		System.out.println(type);
		String url = "";
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductVO> productList = pDao.selectAllProducts();
		
		
//		List<ProductVO> productList = pDao.getListWithPaging(cri);
	
		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		List<ProductPictureVO> pictureList = ppDao.selectAllPictures();
		
		request.setAttribute("productList", productList);
		request.setAttribute("pictureList", pictureList);
		
		int total = pDao.thisTypeTotal(type);
		//
		request.setAttribute("PageDTO", new PageDTO(cri, total));
		
		
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO)session.getAttribute("mVo");
	
		if(mVo == null) {
			url = "/SHS/productList.jsp";			
		}else if(mVo.getId().contains("perfit")) {
			url = "/SHS/productListAdmin.jsp";
		} else {
			url = "/SHS/productList.jsp";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
