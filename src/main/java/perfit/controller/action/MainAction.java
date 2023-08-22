package perfit.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.ProductDAO;
import perfit.dao.ProductPictureDAO;
import perfit.dto.ProductPictureVO;
import perfit.dto.ProductVO;

public class MainAction implements Action {

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "/SHS/01_Main.jsp";
      ProductDAO pDao = ProductDAO.getInstance();
      ProductPictureDAO ppDao = ProductPictureDAO.getInstance();
      
      List<String> idList1 = pDao.new8Products();
      List<ProductVO> productList1 = new ArrayList<ProductVO>();
      List<ProductPictureVO> pictureList1 = new ArrayList<ProductPictureVO>();
      
      for(String id:idList1) {
    	  productList1.add(pDao.selectOneProductById(id));    	  
    	  pictureList1.add(ppDao.selectPicturesById(id));
      }
            
      request.setAttribute("productList1", productList1);
      request.setAttribute("pictureList1", pictureList1);
      
  
      List<String> idList2 = pDao.todayTop8Products();
      List<ProductVO> productList2 = new ArrayList<ProductVO>();
      List<ProductPictureVO> pictureList2 = new ArrayList<ProductPictureVO>();
      
      for(String id:idList2) {
    	  productList2.add(pDao.selectOneProductById(id));    	  
    	  pictureList2.add(ppDao.selectPicturesById(id));
      }
            
      request.setAttribute("productList2", productList2);
      request.setAttribute("pictureList2", pictureList2);
      
      
      RequestDispatcher dispatcher = request.getRequestDispatcher(url);
      dispatcher.forward(request, response);
   }
}

