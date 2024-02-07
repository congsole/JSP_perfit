package perfit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import perfit.dto.ProductPictureVO;
import perfit.util.DBManager;

public class ProductPictureDAO {
	private ProductPictureDAO() {
	}

	private static ProductPictureDAO instance = new ProductPictureDAO();

	public static ProductPictureDAO getInstance() {
		return instance;
	}

	public List<ProductPictureVO> selectAllPictures() {
		String sql = "SELECT * FROM PRODUCT_PICTURE";
		List<ProductPictureVO> list = new ArrayList<ProductPictureVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				ProductPictureVO ppVo = new ProductPictureVO();
				ppVo.setId(rs.getString("ID"));
				ppVo.setDetail1(rs.getString("DETAIL1"));
				ppVo.setDetail2(rs.getString("DETAIL2"));
				ppVo.setDetail3(rs.getString("DETAIL3"));
				ppVo.setDetail4(rs.getString("DETAIL4"));
				ppVo.setDetail5(rs.getString("DETAIL5"));
				ppVo.setDetail6(rs.getString("DETAIL6"));
				ppVo.setDetail7(rs.getString("DETAIL7"));
				ppVo.setDetail8(rs.getString("DETAIL8"));
				ppVo.setDetail9(rs.getString("DETAIL9"));
				ppVo.setModel1(rs.getString("MODEL1"));
				ppVo.setModel2(rs.getString("MODEL2"));
				ppVo.setModel3(rs.getString("MODEL3"));
				ppVo.setModel4(rs.getString("MODEL4"));
				ppVo.setModel5(rs.getString("MODEL5"));
				ppVo.setModel6(rs.getString("MODEL6"));
				ppVo.setModel7(rs.getString("MODEL7"));
				ppVo.setModel8(rs.getString("MODEL8"));
				ppVo.setModel9(rs.getString("MODEL9"));

				list.add(ppVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public ProductPictureVO selectPicturesById(String id) {
		ProductPictureVO pppVo = null;
		String sql = "SELECT * FROM PRODUCT_PICTURE WHERE ID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				pppVo = new ProductPictureVO();
				pppVo.setId(id);
				pppVo.setDetail1(rs.getString("DETAIL1"));
				pppVo.setDetail2(rs.getString("DETAIL2"));
				pppVo.setDetail3(rs.getString("DETAIL3"));
				pppVo.setDetail4(rs.getString("DETAIL4"));
				pppVo.setDetail5(rs.getString("DETAIL5"));
				pppVo.setDetail6(rs.getString("DETAIL6"));
				pppVo.setDetail7(rs.getString("DETAIL7"));
				pppVo.setDetail8(rs.getString("DETAIL8"));
				pppVo.setDetail9(rs.getString("DETAIL9"));
				pppVo.setModel1(rs.getString("MODEL1"));
				pppVo.setModel2(rs.getString("MODEL2"));
				pppVo.setModel3(rs.getString("MODEL3"));
				pppVo.setModel4(rs.getString("MODEL4"));
				pppVo.setModel5(rs.getString("MODEL5"));
				pppVo.setModel6(rs.getString("MODEL6"));
				pppVo.setModel7(rs.getString("MODEL7"));
				pppVo.setModel8(rs.getString("MODEL8"));
				pppVo.setModel9(rs.getString("MODEL9"));
			} // IF
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			DBManager.close(conn, pstmt);
		}
		return pppVo;
	}

	public void insertPicture(ProductPictureVO ppVo) {

		String sql = "INSERT INTO PRODUCT_PICTURE VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ppVo.getId());
			pstmt.setString(2, ppVo.getDetail1());
			pstmt.setString(3, ppVo.getDetail2());
			pstmt.setString(4, ppVo.getDetail3());
			pstmt.setString(5, ppVo.getDetail4());
			pstmt.setString(6, ppVo.getDetail5());
			pstmt.setString(7, ppVo.getDetail6());
			pstmt.setString(8, ppVo.getDetail7());
			pstmt.setString(9, ppVo.getDetail8());
			pstmt.setString(10, ppVo.getDetail9());
			pstmt.setString(11, ppVo.getModel1());
			pstmt.setString(12, ppVo.getModel2());
			pstmt.setString(13, ppVo.getModel3());
			pstmt.setString(14, ppVo.getModel4());
			pstmt.setString(15, ppVo.getModel5());
			pstmt.setString(16, ppVo.getModel6());
			pstmt.setString(17, ppVo.getModel7());
			pstmt.setString(18, ppVo.getModel8());
			pstmt.setString(19, ppVo.getModel9());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void deleteOneProductById(String id) {
		String sql = "delete from PRODUCT_PICTURE where ID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void updatePicture(ProductPictureVO ppVo) {
		String sql = "update PRODUCT_PICTURE set detail1=?, detail2=?, detail3=?, detail4=?, detail5=?, detail6=?, detail7=?, detail8=?, detail9=?, model1=?, model2=?, model3=?, model4=?, model5=?, model6=?, model7=?, model8=?, model9=? where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ppVo.getDetail1());
			pstmt.setString(2, ppVo.getDetail2());
			pstmt.setString(3, ppVo.getDetail3());
			pstmt.setString(4, ppVo.getDetail4());
			pstmt.setString(5, ppVo.getDetail5());
			pstmt.setString(6, ppVo.getDetail6());
			pstmt.setString(7, ppVo.getDetail7());
			pstmt.setString(8, ppVo.getDetail8());
			pstmt.setString(9, ppVo.getDetail9());
			pstmt.setString(10, ppVo.getModel1());
			pstmt.setString(11, ppVo.getModel2());
			pstmt.setString(12, ppVo.getModel3());
			pstmt.setString(13, ppVo.getModel4());
			pstmt.setString(14, ppVo.getModel5());
			pstmt.setString(15, ppVo.getModel6());
			pstmt.setString(16, ppVo.getModel7());
			pstmt.setString(17, ppVo.getModel8());
			pstmt.setString(18, ppVo.getModel9());
			pstmt.setString(19, ppVo.getId());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

}
