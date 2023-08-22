package perfit.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.NoticeDAO;
import perfit.dao.QnaDAO;
import perfit.dto.NoticeVO;
import perfit.dto.QnaVO;

public class MainListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/OHK/cs_main.jsp";
		QnaDAO qDao = QnaDAO.getInstance();
		NoticeDAO nDao = NoticeDAO.getInstance();
		List<QnaVO> qnaList = qDao.selectAllBoards();
		List<NoticeVO> noticeList = nDao.selectAllBoards();
		request.setAttribute("qnaList", qnaList);
		request.setAttribute("noticeList", noticeList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
