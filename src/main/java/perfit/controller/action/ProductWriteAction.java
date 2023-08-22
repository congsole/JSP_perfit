package perfit.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.ProductDAO;
import perfit.dto.ProductVO;



public class ProductWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductVO pVo = new ProductVO();

		pVo.settype(request.getParameter("type"));
		pVo.setcategory(request.getParameter("category"));
		pVo.setname(request.getParameter("name"));
		pVo.setprice(Integer.parseInt(request.getParameter("price")));
		pVo.setdescription(request.getParameter("description"));
		pVo.setfabric(request.getParameter("fabric"));
		pVo.setcleaning(request.getParameter("cleaning"));
		pVo.setshape(request.getParameter("shape"));
		pVo.setcolor_01(request.getParameter("color_01"));
		pVo.setcolor_02(request.getParameter("color_02"));
		pVo.setcolor_03(request.getParameter("color_03"));
		pVo.setcolor_04(request.getParameter("color_04"));
		pVo.setcolor_05(request.getParameter("color_05"));
		pVo.setcolor_06(request.getParameter("color_06"));
		pVo.setcolor_07(request.getParameter("color_07"));
		pVo.setcolor_08(request.getParameter("color_08"));
		pVo.setcolor_09(request.getParameter("color_09"));
		pVo.setcolor_10(request.getParameter("color_10"));
		pVo.setsize_01(request.getParameter("size_01"));
		pVo.setsize_02(request.getParameter("size_02"));
		pVo.setsize_03(request.getParameter("size_03"));
		pVo.setsize_04(request.getParameter("size_04"));
		pVo.setsize_05(request.getParameter("size_05"));
		pVo.setsize_06(request.getParameter("size_06"));
		pVo.setsize_07(request.getParameter("size_07"));
		pVo.setsize_08(request.getParameter("size_08"));
		pVo.setsize_09(request.getParameter("size_09"));
		pVo.setsize_10(request.getParameter("size_10"));
		pVo.setoption_01(request.getParameter("option_01"));
		pVo.setoption_02(request.getParameter("option_02"));
		pVo.setoption_03(request.getParameter("option_03"));
		pVo.setoption_04(request.getParameter("option_04"));
		pVo.setoption_05(request.getParameter("option_05"));
		pVo.setoption_06(request.getParameter("option_06"));
		pVo.setoption_07(request.getParameter("option_07"));
		pVo.setoption_08(request.getParameter("option_08"));
		pVo.setoption_09(request.getParameter("option_09"));
		pVo.setoption_10(request.getParameter("option_10"));
		pVo.setCompany(request.getParameter("company"));
		pVo.setCountry(request.getParameter("country"));
		pVo.setWarranty(request.getParameter("warranty"));
		pVo.setAs(request.getParameter("a_s"));
		
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.insertProduct(pVo);
		pDao.getReadyProduct(pDao.selectOneProductByName(request.getParameter("name")));
		
		new ProductListAction().execute(request, response);
	}

}
