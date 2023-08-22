package perfit.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.MemberDAO;
import perfit.dto.MemberVO;

public class MemberUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO mVo = new MemberVO();
		
		mVo.setId(request.getParameter("id"));
		mVo.setPassword(request.getParameter("password"));
		mVo.setName(request.getParameter("name"));
		mVo.setPhone(request.getParameter("phone"));
		mVo.setSms_YorN(request.getParameter("sms_yorn"));
		mVo.setZip(request.getParameter("zip"));
		mVo.setAddress1(request.getParameter("address1"));
		mVo.setAddress2(request.getParameter("address2"));
		mVo.setEmail(request.getParameter("email"));
		mVo.setEmail_YorN(request.getParameter("email_yorn"));
		
		MemberDAO mDao = MemberDAO.getInstance();
		mDao.memberUpdate(mVo);
//		이후 다른 페이지로 보내는 명령어 넣기
	}
}
