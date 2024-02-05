package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.MemberDAO;

public class MemberIdFindAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String phone = request.getParameter("phone");

		MemberDAO mDao = MemberDAO.getInstance();

		String id = mDao.findId(name, phone);
		request.setAttribute("id", id);

		System.out.println("액션" + id);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/OHK/findIdResult.jsp");
		dispatcher.forward(request, response);
	}

}