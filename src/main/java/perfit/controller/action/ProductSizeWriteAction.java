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
		ProductSizeVO[] psVoList = new ProductSizeVO[10];
		ProductSizeDAO psDao = ProductSizeDAO.getInstance();
		for(int i = 1; i <=10; i++) {
			if(request.getParameter("p_size"+i) == null) {
				break;
			} else {
				psVoList[i] = new ProductSizeVO();
				
				psVoList[i].setId(request.getParameter("id"));
				psVoList[i].setType(request.getParameter("type"));
				psVoList[i].setCategory(request.getParameter("category"));
				psVoList[i].setP_size(request.getParameter("p_size"+i));
				psVoList[i].setShoulder(Integer.parseInt(request.getParameter("shoulder"+i)));
				psVoList[i].setBust(Integer.parseInt(request.getParameter("bust"+i)));
				psVoList[i].setWaist(Integer.parseInt(request.getParameter("waist"+i)));
				psVoList[i].setTotal_length(Integer.parseInt(request.getParameter("total_length"+i)));
				psVoList[i].setArm_length(Integer.parseInt(request.getParameter("arm_length"+i)));
				psVoList[i].setArm(Integer.parseInt(request.getParameter("arm"+i)));
				psVoList[i].setRise(Integer.parseInt(request.getParameter("rise"+i)));
				psVoList[i].setHip(Integer.parseInt(request.getParameter("hip"+i)));
				psVoList[i].setThigh(Integer.parseInt(request.getParameter("thigh"+i)));
				psVoList[i].setHem(Integer.parseInt(request.getParameter("hem"+i)));

				psDao.insertProductSize(psVoList[i]);

			}
			
		}
		




		
		
		ProductVO pVo = new ProductVO();
		pVo.setid(request.getParameter("id"));
		pVo.setshape(request.getParameter("shape"));
		
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.shapeUpdate(pVo);
		
		new ProductListAction().execute(request, response);
	}

}
