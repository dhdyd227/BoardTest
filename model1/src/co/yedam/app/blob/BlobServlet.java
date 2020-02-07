package co.yedam.app.blob;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;


@WebServlet("/BlobServlet")
public class BlobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BlobDAO dao = new BlobDAO();
		List<BlobDTO> list = dao.blobList();
		
		
		for (int i = 0; i < list.size(); i++) {
			String imageString = new String(Base64.encodeBase64(list.get(i).getBlob()));
			String changeString ="data:image/jpg;base64, "+imageString;
			list.get(i).setStringImage(changeString);
		}
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("blob/blobtest.jsp").forward(request, response);

	}

}
