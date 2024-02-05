package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.ProductDAO;
import perfit.dao.ProductPictureDAO;
import perfit.dto.ProductPictureVO;
import perfit.dto.ProductVO;

public class PictureUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/SHS/pictureUpdate.jsp";

		String id = request.getParameter("id");
		System.out.println(id);

		ProductDAO pDao = ProductDAO.getInstance();
		ProductVO pVo = pDao.selectOneProductById(id);
		request.setAttribute("pVo", pVo);
		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		ProductPictureVO ppVo = ppDao.selectPicturesById(id);
		request.setAttribute("ppVo", ppVo);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
