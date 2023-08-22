package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.QnaDAO;
import perfit.dto.QnaVO;

public class QnaAnswerAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnaVO qVo = new QnaVO();
		
		
		String num = request.getParameter("num");
		String answer = request.getParameter("answer");

		System.out.println(answer);
		qVo.setNum(Integer.parseInt(num));
		qVo.setAnswer(answer);
		QnaDAO qDao = QnaDAO.getInstance();
		qDao.updateAnswer(qVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("CscServlet?command=Qna_view&num="+num);
		dispatcher.forward(request, response);
		System.out.println("/OHK/cs_QnA_detail_Custom.jsp?num="+num);
	}

}
