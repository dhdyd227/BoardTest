package co.yedam.app.boardAjax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;
import co.yedam.app.common.Command;
import net.sf.json.JSONObject;

public class AjaxBoardOne implements Command{

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		BoardDAO dao = new BoardDAO();
		BoardDTO dto= dao.selectOne(no);
		String result = JSONObject.fromObject(dto).toString();
		return "ajax:"+result;
	}

}
