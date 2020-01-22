package co.yedam.app.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardCommandCreateForm;
import co.yedam.app.board.BoardCommandSelectList;


/**
 * Servlet implementation class asdsad
 */
@WebServlet("/")
public class NewFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String,Command> cont = new HashMap<String,Command>();
	
	public NewFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		//해쉬맵 구조를 put() 적어준다.
		
	//	cont.put("/index.do.do",new );
		//등록
		//수정
		//삭제
		//상세보기
		
		//목록
		cont.put("/boardList",new BoardCommandSelectList());
		//수정폼
		cont.put("/boardCreateForm",new BoardCommandCreateForm());
		//등록폼
		
		//member
		
//		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURI();
		String context = request.getContextPath();
		String path = url.substring(context.length());
		//로그처리
		System.out.println("path="+path);
		//군한 체크(로그인체크)
		
		Command commandImpl = cont.get(path);
		String page = null;
		response.setContentType("text/html; charset=UTF-8");
		if(commandImpl != null) {
			page =commandImpl.excute(request, response);
			request.getRequestDispatcher(page).forward(request, response);
//			RequestDispatcher dispatcher = request.getRequestDispatcher(page);
//			dispatcher.forward(request,response);
		}else {
			response.getWriter().append("잘못된요청");
		}
		
	}

}
