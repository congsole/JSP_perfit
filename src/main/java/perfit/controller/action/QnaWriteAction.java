package perfit.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.QnaDAO;
import perfit.dto.QnaVO;

public class QnaWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnaVO qVo = new QnaVO();
		qVo.setType(request.getParameter("type"));
		qVo.setId(request.getParameter("id"));
		qVo.setQ_title(request.getParameter("title"));
		qVo.setContent(request.getParameter("content"));
		qVo.setQ_file(request.getParameter("file"));
		QnaDAO qDao = QnaDAO.getInstance();
		qDao.insertBoard(qVo);
		new QnaListAction().execute(request, response);

	}

}
