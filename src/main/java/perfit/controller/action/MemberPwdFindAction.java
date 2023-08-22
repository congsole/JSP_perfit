package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.MemberDAO;

public class MemberPwdFindAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
	     
		
		MemberDAO mDao = MemberDAO.getInstance();

		String password = mDao.findPwd(id, name, phone);
		request.setAttribute("password",password);
		
		System.out.println("액션" + password);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/OHK/findPwdResult.jsp");
		dispatcher.forward(request, response);
	}

}