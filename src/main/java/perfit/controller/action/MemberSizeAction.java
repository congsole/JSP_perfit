package perfit.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import perfit.dao.MemberDAO;
import perfit.dto.MemberVO;

public class MemberSizeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO)session.getAttribute("mVo");
		
		mVo.setHeight(Integer.parseInt(request.getParameter("height")));
		mVo.setWeight(Integer.parseInt(request.getParameter("weight")));
		mVo.setShoulder(Integer.parseInt(request.getParameter("shoulder")));
		mVo.setBust(Integer.parseInt(request.getParameter("bust")));
		mVo.setArm_length(Integer.parseInt(request.getParameter("arm_length")));
		mVo.setArm_size(Integer.parseInt(request.getParameter("arm_size")));
		mVo.setWaist(Integer.parseInt(request.getParameter("waist")));
		mVo.setHip(Integer.parseInt(request.getParameter("hip")));
		mVo.setThigh(Integer.parseInt(request.getParameter("thigh")));
		System.out.println(request.getParameter("thigh"));
		System.out.println(mVo.getThigh());
		mVo.setLeg_length(Integer.parseInt(request.getParameter("leg_length")));
		mVo.setShape(request.getParameter("memberShape"));
		System.out.println(request.getParameter("memberShape"));
		
		
		
		MemberDAO mDao = MemberDAO.getInstance();
		mDao.updateMemberSize(mVo);
		
		String url = "/SHS/memberSize.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	
	}

}

