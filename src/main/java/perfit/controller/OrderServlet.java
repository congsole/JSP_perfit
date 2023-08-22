package perfit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import perfit.controller.action.Action;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("orderServlet에서 요청을 받았음..."+command);
		ActionFactory af = ActionFactory.getInstance();
		System.out.println("action factory객체 얻어옴.");
		Action action = af.getAction(command);
		System.out.println("action factory에서 Action객체 생성을 시도함");
		if(action != null) {
			System.out.println("액션객체가 제대로 생성되어 null이 아님");
			action.execute(request, response);
			System.out.println(command + "의 execute수행 완료");
			System.out.println("==========================================");
		} else {
			System.out.println("액션객체 생성 실패");
			System.out.println("==========================================");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
}