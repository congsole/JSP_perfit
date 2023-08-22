package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.NoticeDAO;
import perfit.dto.NoticeVO;

public class NoticeViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/OHK/cs_notice_detail.jsp";
		String num = request.getParameter("num");
		NoticeDAO nDao = NoticeDAO.getInstance();
		NoticeVO nVo = nDao.selectOneBoardByNum(num);
		NoticeVO bnVo = nDao.beforeView(nVo);
		NoticeVO anVo = nDao.afterView(nVo);
		
		
		request.setAttribute("notice", nVo);
		request.setAttribute("beforeNotice", bnVo);
		request.setAttribute("afterNotice", anVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}