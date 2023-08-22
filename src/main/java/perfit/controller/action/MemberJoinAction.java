package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.dao.MemberDAO;
import perfit.dto.MemberVO;

public class MemberJoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO mVo = new MemberVO();

		mVo.setId(request.getParameter("id"));
		mVo.setPassword(request.getParameter("pw"));
		mVo.setName(request.getParameter("name"));
		mVo.setPhone(request.getParameter("phone"));
		mVo.setSms_YorN(request.getParameter("SMS_YorN"));
		mVo.setZip(request.getParameter("zip_code"));
		mVo.setAddress1(request.getParameter("address_kakao"));
		mVo.setAddress2(request.getParameter("address_detail"));
		mVo.setEmail(request.getParameter("email1") + "@" + request.getParameter("email2"));
		mVo.setEmail_YorN(request.getParameter("EMAIL_YorN"));
		
		mVo.setNickname(request.getParameter("nickname"));
		mVo.setMem_pic(request.getParameter("mem_pic"));
		mVo.setShape(request.getParameter("shape"));

		mVo.setHeight(Integer.parseInt(request.getParameter("height")));
		mVo.setWeight(Integer.parseInt(request.getParameter("weight")));
		mVo.setShoulder(Integer.parseInt(request.getParameter("shoulder")));
		mVo.setBust(Integer.parseInt(request.getParameter("bust")));
		mVo.setArm_length(Integer.parseInt(request.getParameter("arm_length")));
		mVo.setArm_size(Integer.parseInt(request.getParameter("arm_size")));
		mVo.setWaist(Integer.parseInt(request.getParameter("waist")));
		mVo.setHip(Integer.parseInt(request.getParameter("hip")));
		mVo.setThigh(Integer.parseInt(request.getParameter("thigh")));
		mVo.setLeg_length(Integer.parseInt(request.getParameter("leg_length")));
		
		MemberDAO mDao = MemberDAO.getInstance();
		mDao.insertMember(mVo);
		
		request.setAttribute("message", "회원가입을 환영합니다!");
		String url = "/SHS/memberLogin.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		// 회원가입 성공 후 로그인 페이지로 이동. 
	}
}
