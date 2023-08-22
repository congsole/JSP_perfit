package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.NoticeDAO;
import perfit.dao.QnaDAO;
import perfit.dto.NoticeVO;
import perfit.dto.QnaVO;

public class MainViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/OHK/cs_main.jsp";
		String num = request.getParameter("num");
		QnaDAO qDao = QnaDAO.getInstance();
		QnaVO qVo = qDao.selectOneBoardByNum(num);
		NoticeDAO nDao = NoticeDAO.getInstance();
		NoticeVO nVo = nDao.selectOneBoardByNum(num);
		request.setAttribute("qna", qVo);
		request.setAttribute("notice", nVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}