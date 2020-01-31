package co.yedam.app.ajax;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindName
 */
@WebServlet("/FindName.do")
public class FindName extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public FindName() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		//�Ķ���͹ޱ�
		String no = request.getParameter("no");
		//�̸� ã��
		String name="";
		//1.ȫ�浿 2.�����
		if(no.equals("1")) {
			name="ȫ�浿";
		}else if(no.equals("2")) {
			name="�����";
		}
		//�̸� ���
		response.getWriter().append(name);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
