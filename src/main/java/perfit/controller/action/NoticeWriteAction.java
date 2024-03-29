package perfit.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.NoticeDAO;
import perfit.dto.NoticeVO;

public class NoticeWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NoticeVO nVo = new NoticeVO();
		nVo.setN_title(request.getParameter("n_title"));
		nVo.setContent(request.getParameter("content"));
		nVo.setN_file(request.getParameter("n_file"));
		NoticeDAO nDao = NoticeDAO.getInstance();
		nDao.insertBoard(nVo);
		new NoticeListAction().execute(request, response);

	}

}