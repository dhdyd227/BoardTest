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
@WebServlet("*.do")
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
		//�빐�돩留� 援ъ“瑜� put() �쟻�뼱以��떎.
		
	//	cont.put("/index.do.do",new );
		//�벑濡�
		//�닔�젙
		//�궘�젣
		//�긽�꽭蹂닿린
		
<<<<<<< HEAD
		//紐⑸줉
		cont.put("/boardList",new BoardCommandSelectList());
		//�닔�젙�뤌
		cont.put("/boardCreateForm",new BoardCommandCreateForm());
		//�벑濡앺뤌
=======
		//목록
		cont.put("/boardList.do",new BoardCommandSelectList());
		//수정폼
		cont.put("/boardCreateForm.do",new BoardCommandCreateForm());
		//등록폼
>>>>>>> branch 'master' of https://github.com/dhdyd227/BoardTest.git
		
		//member
		
//		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURI();
		String context = request.getContextPath();
		String path = url.substring(context.length());
		//濡쒓렇泥섎━
		System.out.println("path="+path);
		//援고븳 泥댄겕(濡쒓렇�씤泥댄겕)
		
		Command commandImpl = cont.get(path);
		String page = null;
		response.setContentType("text/html; charset=UTF-8");
		if(commandImpl != null) {
			page =commandImpl.excute(request, response);
			request.getRequestDispatcher(page).forward(request, response);
//			RequestDispatcher dispatcher = request.getRequestDispatcher(page);
//			dispatcher.forward(request,response);
		}else {
			response.getWriter().append("�옒紐삳맂�슂泥�");
		}
		
	}

}
