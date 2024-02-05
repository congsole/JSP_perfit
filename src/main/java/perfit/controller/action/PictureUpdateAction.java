package perfit.controller.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import perfit.dao.ProductPictureDAO;
import perfit.dto.ProductPictureVO;

public class PictureUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ProductPictureVO ppVo = new ProductPictureVO();
		System.out.print("id?" + request.getParameter("id"));
		ppVo.setId(request.getParameter("id"));
		ppVo.setDetail1(request.getParameter("detail1"));
		ppVo.setDetail2(request.getParameter("detail2"));
		ppVo.setDetail3(request.getParameter("detail3"));
		ppVo.setDetail4(request.getParameter("detail4"));
		ppVo.setDetail5(request.getParameter("detail5"));
		ppVo.setDetail6(request.getParameter("detail6"));
		ppVo.setDetail7(request.getParameter("detail7"));
		ppVo.setDetail8(request.getParameter("detail8"));
		ppVo.setDetail9(request.getParameter("detail9"));

		ppVo.setModel1(request.getParameter("model1"));
		ppVo.setModel2(request.getParameter("model2"));
		ppVo.setModel3(request.getParameter("model3"));
		ppVo.setModel4(request.getParameter("model4"));
		ppVo.setModel5(request.getParameter("model5"));
		ppVo.setModel6(request.getParameter("model6"));
		ppVo.setModel7(request.getParameter("model7"));
		ppVo.setModel8(request.getParameter("model8"));
		ppVo.setModel9(request.getParameter("model9"));

		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		ppDao.updatePicture(ppVo);

		new ProductListAction().execute(request, response);
	}

}
