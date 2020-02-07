package co.yedam.app.ajax;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Command;
import net.sf.json.JSONArray;

public class GetDeptCnt implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//CharDAO
		ChartDAO dao = new ChartDAO();
		List<Map<String,Object>> list = dao.getDetpCnt();
		
		String result = JSONArray.fromObject(list).toString();
		
		return "ajax:"+result;
	}

}





