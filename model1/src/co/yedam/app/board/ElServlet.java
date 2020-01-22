package co.yedam.app.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ElServlet
 */
@WebServlet("/ElServlet")
public class ElServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ElServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("name", "request-hong");
		HttpSession session=request.getSession();
		session.setAttribute("name", "session-hong");
		
		this.getServletContext().setAttribute("name","application-hong");
		
		//List
		List<BoardDTO> list = new ArrayList<>();
		list.add(new BoardDTO(1,"홍길동","첫번째"));
		list.add(new BoardDTO(2,"홍길동2","두번째"));
		request.setAttribute("boardList",list);

		//Map
		Map<String ,Object> map = new HashMap<>();
		map.put("name","이순신");
		map.put("age",25);
		map.put("dept","개발");
		request.setAttribute("userInfo",map);
		
		//Board
		
		request.setAttribute("board",new BoardDTO(3,"홍길동3","세번째"));
		request.getRequestDispatcher("jsp/elTest.jsp").forward(request,response);
		
	}


}
