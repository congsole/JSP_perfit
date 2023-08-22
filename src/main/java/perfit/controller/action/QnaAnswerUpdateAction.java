package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.QnaDAO;
import perfit.dto.QnaVO;

public class QnaAnswerUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnaVO qVo = new QnaVO();
		qVo.setNum(Integer.parseInt(request.getParameter("num")));
		qVo.setId(request.getParameter("answer"));
		QnaDAO qDao = QnaDAO.getInstance();
		qDao.updateAnswer(qVo);
		new QnaListAction().execute(request, response);
	
		
	}

}