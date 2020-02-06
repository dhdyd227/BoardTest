package co.yedam.app.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardCommandCreateForm;
import co.yedam.app.board.BoardCommandSelectList;
import co.yedam.app.board.FileUpload;
import co.yedam.app.boardAjax.AjaxBoardList;
import co.yedam.app.boardAjax.AjaxBoardOne;
import co.yedam.app.users.command.DeleteUsers;
import co.yedam.app.users.command.GetUsers;
import co.yedam.app.users.command.GetUsersList;
import co.yedam.app.users.command.InsertUsers;
import co.yedam.app.users.command.ManageUsers;
import co.yedam.app.users.command.UpdateUsers;


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
		
		//보드 리스트
		cont.put("/boardList",new BoardCommandSelectList());
		
		cont.put("/boardCreateForm",new BoardCommandCreateForm());
		
		//목록
		cont.put("/boardList.do",new BoardCommandSelectList());
		//수정폼
		cont.put("/boardCreateForm.do",new BoardCommandCreateForm());
		//등록폼
		
		cont.put("/ajaxBoardList.do",new AjaxBoardList());
		cont.put("/ajaxBoardOne.do",new AjaxBoardOne());
		//member
		
	
		cont.put("/ManageUsers.do",new ManageUsers());
		cont.put("/ajax/DeleteUsers.do",new DeleteUsers());
		cont.put("/ajax/GetUsers.do",new GetUsers());
		cont.put("/ajax/GetUsersList.do",new GetUsersList());
		cont.put("/ajax/InsertUsers.do",new InsertUsers());
		cont.put("/ajax/UpdateUsers.do",new UpdateUsers());
		
		cont.put("/FileUpload.do",new FileUpload());
		
//		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURI();
		String context = request.getContextPath();
		String path = url.substring(context.length());
		//
		System.out.println("path="+path);
		//援고븳 泥댄겕(濡쒓렇�씤泥댄겕)
		
		Command commandImpl = cont.get(path);
		String page = null;
		response.setContentType("text/html; charset=UTF-8");
		
		if(commandImpl != null) {
			page =commandImpl.excute(request, response);
			System.out.println(page);
			
			if(page != null && !page.isEmpty()) {
				//특정 단어로 시작
				System.out.println(page.startsWith("ajax:"));
				if(page.startsWith("redirect:")) {
					String view = page.substring(9);
					System.out.println("---redirect---");
					response.sendRedirect(view);
				}else if(page.startsWith("ajax:")) {
					String view =page.substring(5);
					System.out.println("---ajax---");
					response.getWriter().append(view);
					
				}else if(page.startsWith("script:")) {
					System.out.println("---script---");
					response.getWriter().append("<script>")
										.append(page.substring(7))
										.append("</script>");
				}else {
					request.getRequestDispatcher(page).forward(request, response);
				}
			}
			
//			RequestDispatcher dispatcher = request.getRequestDispatcher(page);
//			dispatcher.forward(request,response);
		}else {
			System.out.println("commandImpl;else");
		}
		
	}

}
