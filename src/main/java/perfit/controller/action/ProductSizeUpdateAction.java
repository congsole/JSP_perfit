package perfit.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.ProductSizeDAO;
import perfit.dto.ProductSizeVO;

public class ProductSizeUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ProductSizeVO> list = new ArrayList<>();
		for(int i=0; i<12; i++) {
			list.add(new ProductSizeVO());
		}

		
		for(int i=1; i<=10; i++) {
			if(request.getParameter("p_size"+i) == null) {
				break;
			} else {
				
				list.get(i).setArm(Integer.parseInt(request.getParameter("arm"+i)));
				list.get(i).setArm_length(Integer.parseInt(request.getParameter("arm_length"+i)));
				list.get(i).setBust(Integer.parseInt(request.getParameter("bust"+i)));
//				list.get(i).setCategory(request.getParameter("category"));
				list.get(i).setHem(Integer.parseInt(request.getParameter("hem"+i)));
				list.get(i).setHip(Integer.parseInt(request.getParameter("hip"+i)));
				list.get(i).setId(request.getParameter("id"));
				list.get(i).setP_size(request.getParameter("p_size"+i));
				list.get(i).setRise(Integer.parseInt(request.getParameter("rise"+i)));
				list.get(i).setShoulder(Integer.parseInt(request.getParameter("shoulder"+i)));
				list.get(i).setThigh(Integer.parseInt(request.getParameter("thigh"+i)));
				list.get(i).setTotal_length(Integer.parseInt(request.getParameter("total_length"+i)));
//				list.get(i).setType(request.getParameter("type"));
				list.get(i).setWaist(Integer.parseInt(request.getParameter("waist"+i)));
				
			}
		}
		
		ProductSizeDAO psDao = ProductSizeDAO.getInstance();
		psDao.updateProductSize(list);

	}

}
