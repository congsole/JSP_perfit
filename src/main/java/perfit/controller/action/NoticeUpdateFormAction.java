package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.NoticeDAO;
import perfit.dto.NoticeVO;

public class NoticeUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/OHK/cs_notice_update.jsp";
		String num = request.getParameter("num");
		NoticeDAO nDao = NoticeDAO.getInstance();
		NoticeVO qVo = nDao.selectOneBoardByNum(num);
		request.setAttribute("notice", qVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}