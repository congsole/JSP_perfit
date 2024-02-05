package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.ProductDAO;
import perfit.dao.ProductPictureDAO;

public class ProductDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
		ProductDAO pDao = ProductDAO.getInstance();
		ppDao.deleteOneProductById(id);
		int result = pDao.deleteOneProductById(id);
		System.out.println(result);

		String url = "ProductServlet?command=Product_list";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

/*
 * protected void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { String code =
 * request.getParameter("code"); ProductDAO pDao = ProductDAO.getInstance();
 * ProductVO pVo = pDao.selectProductByCode(code);
 * request.setAttribute("product", pVo); RequestDispatcher dispatcher =
 * request.getRequestDispatcher("product/productDelete.jsp");
 * dispatcher.forward(request, response); } protected void
 * doPost(HttpServletRequest request, HttpServletResponse response) throws
 * ServletException, IOException { String code = request.getParameter("code");
 * ProductDAO pDao = ProductDAO.getInstance(); pDao.deleteProductByCode(code);
 * response.sendRedirect("productList.do"); }
 */