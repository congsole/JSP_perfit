package perfit.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.ProductDAO;
import perfit.dao.ProductSizeDAO;
import perfit.dto.ProductSizeVO;
import perfit.dto.ProductVO;



public class ProductSizeWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductSizeVO psVo = new ProductSizeVO();

		psVo.setId(request.getParameter("id"));
		psVo.setType(request.getParameter("type"));
		psVo.setCategory(request.getParameter("category"));
		psVo.setP_size(request.getParameter("p_size"));
		psVo.setShoulder(Integer.parseInt(request.getParameter("shoulder")));
		psVo.setBust(Integer.parseInt(request.getParameter("bust")));
		psVo.setWaist(Integer.parseInt(request.getParameter("waist")));
		psVo.setTotal_length(Integer.parseInt(request.getParameter("total_length")));
		psVo.setArm_length(Integer.parseInt(request.getParameter("arm_length")));
		psVo.setArm(Integer.parseInt(request.getParameter("arm")));
		psVo.setRise(Integer.parseInt(request.getParameter("rise")));
		psVo.setHip(Integer.parseInt(request.getParameter("hip")));
		psVo.setThigh(Integer.parseInt(request.getParameter("thigh")));
		psVo.setHem(Integer.parseInt(request.getParameter("hem")));

		
		ProductSizeDAO psDao = ProductSizeDAO.getInstance();
		psDao.insertProductSize(psVo);

		ProductVO pVo = new ProductVO();
		pVo.setid(request.getParameter("id"));
		pVo.setshape(request.getParameter("shape"));
		
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.shapeUpdate(pVo);
		
		new ProductListAction().execute(request, response);
	}

}
