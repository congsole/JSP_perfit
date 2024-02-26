package perfit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import perfit.dto.ProductSizeVO;
import perfit.util.DBManager;

public class ProductSizeDAO {
	private ProductSizeDAO() {
	}

	private static ProductSizeDAO instance = new ProductSizeDAO();

	public static ProductSizeDAO getInstance() {
		return instance;
	}

	public static List<String> selectIdsBySearch(String[] type_chk, String[] category_chk, String total_length_L,
			String total_length_R, String shoulder_L, String shoulder_R, String bust_L, String bust_R, String waist_L,
			String waist_R, String sleeve_L, String sleeve_R) {

		String sql = "";
		String checked_types = "";
		String checked_categories = "";
		List<String> idList = new ArrayList<String>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		for (int i = 0; i < type_chk.length; i++) {
			if (i == 0) {
				checked_types += "'" + type_chk[i] + "'";
			} else {
				checked_types += " ,'" + type_chk[i] + "'";
			}
		}
		for (int j = 0; j < category_chk.length; j++) {
			if (j == 0) {
				checked_categories += "'" + category_chk[j] + "'";
			} else {
				checked_categories += " ,'" + category_chk[j] + "'";
			}
		}
		System.out.println(checked_types + "/" + checked_categories);

		sql = "SELECT ID FROM PRODUCT_SIZE WHERE TYPE in(" + checked_types + ") AND CATEGORY in(" + checked_categories + ")"
				+ " AND TOTAL_LENGTH>=" + total_length_L + " AND TOTAL_LENGTH<=" + total_length_R + " AND SHOULDER>="
				+ shoulder_L + " AND SHOULDER<=" + shoulder_R + " AND BUST>=" + bust_L + " AND BUST<=" + bust_R
				+ " AND WAIST>=" + waist_L + " AND WAIST<=" + waist_R + " AND ARM_LENGTH>=" + sleeve_L
				+ " AND ARM_LENGTH<=" + sleeve_R;

		System.out.println(sql);

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				System.out.println("SELECT된 ID가 있다면?" + rs.getString("ID"));
				idList.add(rs.getString("ID"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return idList;
	}

// insert도 리스트로 할 수 있또록 고쳐야함!!!!!!
	public void insertProductSize(ProductSizeVO psVo) {
		String sql = "INSERT INTO Product_Size (id, type, category, p_size, "
				+ "shoulder, bust, waist, hip, total_length, " + "arm_length, arm, rise, thigh, hem)"
				+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, psVo.getId());
			pstmt.setString(2, psVo.getType());
			pstmt.setString(3, psVo.getCategory());
			pstmt.setString(4, psVo.getP_size());

			pstmt.setInt(5, psVo.getShoulder());
			pstmt.setInt(6, psVo.getBust());
			pstmt.setInt(7, psVo.getWaist());
			pstmt.setInt(8, psVo.getHip());
			pstmt.setInt(9, psVo.getTotal_length());

			pstmt.setInt(10, psVo.getArm_length());
			pstmt.setInt(11, psVo.getArm());
			pstmt.setInt(12, psVo.getRise());

			pstmt.setInt(13, psVo.getThigh());
			pstmt.setInt(14, psVo.getHem());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}

	}

	public void updateProductSize(List<ProductSizeVO> psVoList) {
		String sql = "UPDATE Product_Size " + "SET shoulder=?, bust=?, waist=?, hip=?, total_length=?, "
				+ "arm_length=?, arm=?, rise=?, thigh=?, hem=? " + "WHERE id=? AND p_size=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			for (ProductSizeVO psVo : psVoList) {
				pstmt = conn.prepareStatement(sql);

				pstmt.setInt(1, psVo.getShoulder());
				pstmt.setInt(2, psVo.getBust());
				pstmt.setInt(3, psVo.getWaist());
				pstmt.setInt(4, psVo.getHip());
				pstmt.setInt(5, psVo.getTotal_length());

				pstmt.setInt(6, psVo.getArm_length());
				pstmt.setInt(7, psVo.getArm());
				pstmt.setInt(8, psVo.getRise());
				pstmt.setInt(9, psVo.getThigh());
				pstmt.setInt(10, psVo.getHem());

				pstmt.setString(11, psVo.getId());
				pstmt.setString(12, psVo.getP_size());

				pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}

	}

	public List<ProductSizeVO> selectSizeById(String id) {
		List<ProductSizeVO> list = new ArrayList<>();
		String sql = "SELECT * FROM product_size WHERE id='" + id + "'";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		ProductSizeVO vo;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				vo = new ProductSizeVO();
				vo.setArm(Integer.parseInt(rs.getString("arm")));
				vo.setArm_length(Integer.parseInt(rs.getString("arm_length")));
				vo.setBust(Integer.parseInt(rs.getString("bust")));
				vo.setCategory(rs.getString("category"));
				vo.setHem(Integer.parseInt(rs.getString("hem")));
				vo.setHip(Integer.parseInt(rs.getString("hip")));
				vo.setId(rs.getString("id"));
				vo.setP_size(rs.getString("p_size"));
				vo.setRise(Integer.parseInt(rs.getString("rise")));
				vo.setShoulder(Integer.parseInt(rs.getString("shoulder")));
				vo.setThigh(Integer.parseInt(rs.getString("thigh")));
				vo.setTotal_length(Integer.parseInt(rs.getString("total_length")));
				vo.setType(rs.getString("type"));
				vo.setWaist(Integer.parseInt(rs.getString("waist")));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt);
		}
		return list;
	}

}
