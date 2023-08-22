	package perfit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import perfit.dto.QnaVO;
import perfit.util.DBManager;

public class QnaDAO {
	private QnaDAO() {}
	private static QnaDAO instance = new QnaDAO();
	public static QnaDAO getInstance() {
		return instance;
	}
	public List<QnaVO> selectAllBoards() {
		String sql = "select * from QNA_TABLE order by num desc";
		List<QnaVO> list = new ArrayList<QnaVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			System.out.println("rs받았음");
			while(rs.next()) {
				QnaVO qVo = new QnaVO();
				qVo.setNum(rs.getInt("num"));
				qVo.setId(rs.getString("id"));
				qVo.setQ_title(rs.getString("q_title"));
//				qVo.setContent(rs.getString("content"));
				qVo.setQ_date(rs.getTimestamp("q_date"));
				qVo.setType(rs.getString("type"));
				qVo.setRep(rs.getString("rep"));
//				qVo.setQ_file(rs.getString("q_file"));
//				qVo.setAnswer(rs.getString("answer"));
//				qVo.setA_date(rs.getTimestamp("a_date"));
				list.add(qVo);
				System.out.println("list에 담았음");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		
		return list;
	}
	public void insertBoard(QnaVO qVo) {
		String sql = "insert into QNA_TABLE("
				+ "num, id, q_title, content, q_date, type, rep, q_file, answer, a_date) "
				+ "values(QNA_seq.nextval,?,?,?,sysdate,?,'0',?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qVo.getId());
			pstmt.setString(2, qVo.getQ_title());
			pstmt.setString(3, qVo.getContent());
			pstmt.setString(4, qVo.getType());
			pstmt.setString(5, qVo.getQ_file());
			pstmt.setString(6, qVo.getAnswer());
			pstmt.setTimestamp(7, qVo.getA_date());
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		
		
	}
	 public QnaVO selectOneBoardByNum(String num) {
	      QnaVO qVo = null;
	      String sql = "select * from QNA_TABLE where num = ?";
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try {
	         conn = DBManager.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, num);
	         rs = pstmt.executeQuery();
	         if (rs.next()) {
	        	 
	        	qVo = new QnaVO();
	        	qVo.setNum(rs.getInt("num"));
	        	qVo.setId(rs.getString("id"));
				qVo.setQ_title(rs.getString("q_title"));
				qVo.setContent(rs.getString("content"));
				qVo.setQ_date(rs.getTimestamp("q_date"));
				qVo.setType(rs.getString("type"));
				qVo.setRep(rs.getString("rep"));
				qVo.setQ_file(rs.getString("q_file"));
				qVo.setAnswer(rs.getString("answer"));
				qVo.setA_date(rs.getTimestamp("a_date"));
				
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      

		}finally {
			DBManager.close(conn, pstmt);
		}
		return qVo;
	}
	
	public void updateBoard(QnaVO qVo) {
		String sql = "update QNA_TABLE set type=?,"
				+ " q_file=?, q_title=?, content=? where num=?";
		Connection conn =  null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, qVo.getType());
			pstmt.setString(2, qVo.getQ_file());
			pstmt.setString(3, qVo.getQ_title());
			pstmt.setString(4, qVo.getContent());
			pstmt.setInt(5, qVo.getNum());

			pstmt.executeUpdate();
		} catch (Exception e) {
			
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	public void deleteBoard(String num) {
		String sql = "delete QNA_TABLE where num=?";
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
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}

	public List<QnaVO> qnaSearch(String word, String searchField) {
//	      String sql = "SELECT * FROM QNA_TABLE "
//	                  + "where Q_TITLE LIKE '%" + word + "%' "
//	                  + "or ID LIKE '%" + word + "%' ";
		String sql="select * from QNA_TABLE where ID like '%" + word + "%'";
		if(searchField.equals("q_title")) {
			sql = "select * from QNA_TABLE where Q_TITLE like '%" + word + "%'";
		}else if(searchField.equals("id")) {
			sql="select * from QNA_TABLE where ID like '%" + word + "%'";
		}
	      
	      List<QnaVO> list = new ArrayList<QnaVO>();
	      Connection conn = null;
	      Statement stmt = null;
	      ResultSet rs = null;
	      try {
	         conn = DBManager.getConnection();
	   
	         stmt = conn.createStatement();
	         rs = stmt.executeQuery(sql);
	         System.out.println(sql);
	         while(rs.next()) {
	            QnaVO qVo = new QnaVO();
	            qVo = new QnaVO();
	        	qVo.setNum(rs.getInt("num"));
	        	qVo.setId(rs.getString("id"));
				qVo.setQ_title(rs.getString("q_title"));
				qVo.setContent(rs.getString("content"));
				qVo.setQ_date(rs.getTimestamp("q_date"));
				qVo.setType(rs.getString("type"));
				qVo.setRep(rs.getString("rep"));
				qVo.setQ_file(rs.getString("q_file"));
				qVo.setAnswer(rs.getString("answer"));
				qVo.setA_date(rs.getTimestamp("a_date"));
	            list.add(qVo);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBManager.close(conn, stmt, rs);
	      }

	      return list;
	   }
	public void updateAnswer(QnaVO qVo) {
		String sql = "update QNA_TABLE set answer=?,"
				+ " a_date=sysdate , rep='1' where num=?";
		Connection conn =  null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, qVo.getAnswer());
			pstmt.setInt(2, qVo.getNum());
			
			

			pstmt.executeUpdate();
		} catch (Exception e) {
			
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	public void deleteAnswer(int num) {
		String sql = "update QNA_TABLE set answer='',"
				+ " a_date='', rep='0'  where num=?";
		Connection conn =  null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setInt(1, num);
			
			

			pstmt.executeUpdate();
		} catch (Exception e) {
			
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
}

