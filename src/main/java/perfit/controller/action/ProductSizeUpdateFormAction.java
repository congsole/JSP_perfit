package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.ProductDAO;
import perfit.dao.ProductPictureDAO;
import perfit.dao.ProductSizeDAO;
import perfit.dto.ProductPictureVO;
import perfit.dto.ProductSizeVO;
import perfit.dto.ProductVO;

public class ProductSizeUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/SHS/productSizeUpdate.jsp";

		String id = request.getParameter("id");

		ProductDAO pDao = ProductDAO.getInstance();
		ProductVO pVo = pDao.selectOneProductById(id);
		request.setAttribute("pVo", pVo);

		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		ProductPictureVO ppVo = ppDao.selectPicturesById(id);
		request.setAttribute("ppVo", ppVo);

		ProductSizeDAO psDao = ProductSizeDAO.getInstance();
		List<ProductSizeVO> psVoList = psDao.selectSizeById(id);
		request.setAttribute("psVoList", psVoList);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
