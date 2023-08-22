package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import perfit.dao.ProductDAO;
import perfit.dao.ProductPictureDAO;
import perfit.dto.MemberVO;
import perfit.dto.ProductPictureVO;
import perfit.dto.ProductVO;

public class ProductViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String url = "";
		ProductDAO pDao = ProductDAO.getInstance();
		ProductVO pVo = pDao.selectOneProductById(id);
		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		ProductPictureVO ppVo = ppDao.selectPicturesById(id);
		
		
		request.setAttribute("pVo", pVo);
		request.setAttribute("ppVo", ppVo);
		
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO)session.getAttribute("mVo");
		
		if(mVo == null) {
			url = "/SHS/productView.jsp";
		}else if(mVo.getId().contains("perfit")) {
			url = "/SHS/productViewAdmin.jsp";
		} else {
			url = "/SHS/productView.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
