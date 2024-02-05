package perfit.controller.action;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.ProductDAO;
import perfit.dao.ProductPictureDAO;
import perfit.dao.ProductSizeDAO;
import perfit.dto.PageVO;
import perfit.dto.ProductPictureVO;
import perfit.dto.ProductVO;

public class ProductSearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String command = "product_search";

		String[] type_chk = request.getParameterValues("type_chk");
		String price_L = request.getParameter("price_L"); // 아이디 받아와서 가격이랑 같이 검색 ... 가격으로 select하는 메쏘드 하나 만들고
		String price_R = request.getParameter("price_R"); // 아이디 받아와서 가격이랑 같이 검색 ... jsp에서는 productSize다오에서 받아온 아이디랑
															// 비교해서 있는 것만 뿌리기.
		String total_length_L = request.getParameter("total_length_L");
		String total_length_R = request.getParameter("total_length_R");
		String shoulder_L = request.getParameter("shoulder_L");
		String shoulder_R = request.getParameter("shoulder_R");
		String bust_L = request.getParameter("bust_L");
		String bust_R = request.getParameter("bust_R");
		String waist_L = request.getParameter("waist_L");
		String waist_R = request.getParameter("waist_R");
		String sleeve_L = request.getParameter("sleeve_L");
		String sleeve_R = request.getParameter("sleeve_R");
		String[] category_chk = request.getParameterValues("category_chk");
		String[] shape_chk = request.getParameterValues("shape_chk");

		List<String> idList = ProductSizeDAO.selectIdsBySearch(type_chk, category_chk, total_length_L, total_length_R,
				shoulder_L, shoulder_R, bust_L, bust_R, waist_L, waist_R, sleeve_L, sleeve_R);

		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductVO> productList = pDao.selectSearchedProduct(price_L, price_R, shape_chk);

		idList.retainAll(productList.stream().map(product -> product.getid()).collect(Collectors.toList()));

		int total = idList.size();
		int pageNum = 1;
		int amount = 12;
		if (request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		PageVO pageVO = new PageVO(pageNum, amount, total);

		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		List<ProductPictureVO> pictureList = ppDao.selectAllPictures();

		request.setAttribute("command", command);
		request.setAttribute("idList", idList);
		request.setAttribute("pageVO", pageVO);
		request.setAttribute("productList", productList);
		request.setAttribute("pictureList", pictureList);

		String url = "/SHS/productSearchList.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
