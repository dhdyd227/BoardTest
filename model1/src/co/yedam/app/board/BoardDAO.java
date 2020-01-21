package co.yedam.app.board;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends DAO {
	// 추가
	public int insert(BoardDTO dto) {
		int r = 0;

		try {
			String sql = " insert into board(no,poster,subject,contents,lastpost,views)"
					+ " values((select max(no)+1 from board),?,?,?,sysdate,1)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPoster());
			psmt.setString(2, dto.getSubject());
			psmt.setString(3, dto.getContents());
			r = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

	// 수정
	public int update(BoardDTO dto) {
		int r = 0;

		try {
			String sql = " update board set subject=?,contents=? " + " where no=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getSubject());
			psmt.setString(2, dto.getContents());
			psmt.setInt(3, dto.getNo());
			r = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

	// 삭제
	public int delete(BoardDTO dto) {
		int r = 0;

		try {
			String sql = " delete from board where no=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getNo());
			r = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

	// 단건조회
	public BoardDTO selectOne(int no) {
		BoardDTO dto = new BoardDTO();
		try {
			String sql = "select * from board where no=?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, no);
			rs = psmt.executeQuery();

			if (rs.next()) {
				dto.setNo(rs.getInt("no"));
				dto.setPoster(rs.getString("poster"));
				dto.setSubject(rs.getString("subject"));
				dto.setContents(rs.getString("contents"));
				dto.setDate(rs.getDate("lastpost"));
				dto.setViews(rs.getInt("views"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

	// 목록
	public List<BoardDTO> selectList() {
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		// 1.DB연결

		// 2.쿼리실행
		try {
			String sql = "select * from board order by no desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery(sql);
			// 3.결과저장
			while (rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNo(rs.getInt("no"));
				dto.setPoster(rs.getString("poster"));
				dto.setSubject(rs.getString("subject"));
				dto.setContents(rs.getString("contents"));
				dto.setDate(rs.getDate("lastpost"));
				dto.setViews(rs.getInt("views"));
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
