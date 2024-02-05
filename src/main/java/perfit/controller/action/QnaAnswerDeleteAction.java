package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.QnaDAO;

public class QnaAnswerDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int num = Integer.parseInt(request.getParameter("num"));
		QnaDAO qDao = QnaDAO.getInstance();
		qDao.deleteAnswer(num);

		RequestDispatcher dispatcher = request.getRequestDispatcher("CscServlet?command=Qna_view&num=" + num);
		dispatcher.forward(request, response);

	}
}