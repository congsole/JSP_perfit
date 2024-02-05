package perfit.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.QnaDAO;
import perfit.dto.QnaVO;

public class QnaUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnaVO qVo = new QnaVO();
		qVo.setNum(Integer.parseInt(request.getParameter("num")));
		qVo.setId(request.getParameter("id"));
		qVo.setQ_title(request.getParameter("q_title"));
		qVo.setContent(request.getParameter("content"));
		qVo.setQ_file(request.getParameter("file"));
		qVo.setType(request.getParameter("type"));
		QnaDAO qDao = QnaDAO.getInstance();
		qDao.updateBoard(qVo);
		new QnaListAction().execute(request, response);

	}

}