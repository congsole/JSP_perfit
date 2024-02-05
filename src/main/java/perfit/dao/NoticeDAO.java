package perfit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import perfit.dto.NoticeVO;
import perfit.dto.QnaVO;
import perfit.util.DBManager;

public class NoticeDAO {
	private NoticeDAO() {
	}

	private static NoticeDAO instance = new NoticeDAO();

	public static NoticeDAO getInstance() {
		return instance;
	}

	public List<NoticeVO> selectAllBoards() {
		String sql = "select * from NOTICE_TABLE order by num desc";
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			System.out.println("rs받았음");
			while (rs.next()) {
				NoticeVO nVo = new NoticeVO();
				nVo.setNum(rs.getInt("num"));
				nVo.setN_title(rs.getString("n_title"));
//				nVo.setContent(rs.getString("content"));
				nVo.setN_date(rs.getTimestamp("n_date"));
//				nVo.setN_file(rs.getString("n_file"));
				list.add(nVo);
				System.out.println("list에 담았음");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}

		return list;
	}

	public void insertBoard(NoticeVO qVo) {
		String sql = "insert into NOTICE_TABLE(" + "num, n_title, content, n_date, n_file) "
				+ "values(notice_seq.nextval,?,?,sysdate,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qVo.getN_title());
			pstmt.setString(2, qVo.getContent());
			pstmt.setString(3, qVo.getN_file());
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}

	}

	public NoticeVO selectOneBoardByNum(String num) {
		NoticeVO nVo = null;
		String sql = "select * from NOTICE_TABLE where num = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {

				nVo = new NoticeVO();
				nVo.setNum(rs.getInt("num"));
				nVo.setN_title(rs.getString("n_title"));
				nVo.setContent(rs.getString("content"));
				nVo.setN_date(rs.getTimestamp("n_date"));
				nVo.setN_file(rs.getString("n_file"));

			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			DBManager.close(conn, pstmt);
		}
		return nVo;
	}

	public void updateBoard(NoticeVO nVo) {
		String sql = "update NOTICE_TABLE set n_title=?, content=?, n_file=? where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, qVo.getId());
//			pstmt.setTimestamp(5, qVo.getQ_date());
//			pstmt.setString(2, qVo.getType());
//			pstmt.setString(7, qVo.getRep());
			pstmt.setString(1, nVo.getN_title());
			pstmt.setString(2, nVo.getContent());
			pstmt.setString(3, nVo.getN_file());
			pstmt.setInt(4, nVo.getNum());
//			pstmt.setString(9, qVo.getAnswer());
//			pstmt.setTimestamp(10, qVo.getA_date());
			pstmt.executeUpdate();
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void deleteBoard(String num) {
		String sql = "delete NOTICE_TABLE where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}

	}

	public List<NoticeVO> getList(int startRow, int endRow) {

		String sql = "select * from NOTICE_TABLE "
				+ " (select rownum as rn, num, n_title, content, n_date, n_file, from "
				+ "(select * from NOTICE_TABLE order by num desc)) where rn between ? and ?";
		List<NoticeVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection(); // 연결
			System.out.println("연결");
			pstmt = conn.prepareStatement(sql); // sql준비
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery(); // sql문 실행
			System.out.println("실행");

			if (rs.next()) {

				list = new ArrayList<>();
				do {
					NoticeVO nVo = new NoticeVO();

					nVo.setNum(rs.getInt("num"));
					nVo.setN_title(rs.getString("n_title"));
					nVo.setContent(rs.getString("content"));
					nVo.setN_date(rs.getTimestamp("n_date"));
					nVo.setN_file(rs.getString("n_file"));

					list.add(nVo);
				} while (rs.next());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return list;
	}

	public NoticeVO beforeView(NoticeVO nVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeVO bnVo = new NoticeVO();
		try {
			conn = DBManager.getConnection();

			String sql = "select num, n_title, n_date from NOTICE_TABLE where num=(select max(num) from NOTICE_TABLE where num < ? )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nVo.getNum());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bnVo.setNum(rs.getInt("num"));
				bnVo.setN_title(rs.getString("n_title"));
				bnVo.setN_date(rs.getTimestamp("n_date"));
			} else {
				bnVo.setN_title("이전 글이 없습니다");
			}

		} catch (Exception e) {
			System.out.println("에러:" + e.getMessage());
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bnVo;
	}

	public NoticeVO afterView(NoticeVO nVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeVO anVo = new NoticeVO();

		try {
			conn = DBManager.getConnection();

			String sql = "select num, n_title, n_date from NOTICE_TABLE where num=(select min(num) from NOTICE_TABLE where num >	 ? )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nVo.getNum());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				anVo.setNum(rs.getInt("num"));
				anVo.setN_title(rs.getString("n_title"));
				anVo.setN_date(rs.getTimestamp("n_date"));
			} else {
				anVo.setN_title("다음 글이 없습니다");
			}

		} catch (Exception e) {
			System.out.println("에러:" + e.getMessage());
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (Exception e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}
		}

		return anVo;

	}
}