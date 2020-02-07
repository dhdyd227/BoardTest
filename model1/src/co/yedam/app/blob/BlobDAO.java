package co.yedam.app.blob;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BlobDAO extends BlobDAOConnection {
	
	public List<BlobDTO> blobList() {
		List<BlobDTO> list = new ArrayList<BlobDTO>();
	
		try {
			String sql = "select * from test_a";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery(sql);
			
			while (rs.next()) {
				BlobDTO dto = new BlobDTO();
				dto.setCode(rs.getString("code"));
				dto.setFilename(rs.getString("filename"));
				Blob blob = rs.getBlob("blobdata");
				dto.setBlob(blob.getBytes(1, (int)blob.length()));
				list.add(dto);
				
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
}
