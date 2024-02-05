package perfit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import perfit.dto.CartVO;
import perfit.util.DBManager;

public class CartDAO {
	private CartDAO() {
	}

	private static CartDAO instance = new CartDAO();

	public static CartDAO getInstance() {
		return instance;
	}

	public CartVO isExisting(String pid, String color, String size) {
		CartVO existingCVo = null;
		String sql = "select CART_NUM, P_AMOUNT from CART where P_ID=? and P_COLOR=? and P_SIZE=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pid);
			pstmt.setString(2, color);
			pstmt.setString(3, size);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				existingCVo = new CartVO();
				existingCVo.setCart_num(rs.getString("CART_NUM"));
				existingCVo.setAmount(rs.getInt("P_AMOUNT"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}

		return existingCVo;
	}

	public void insertCart(CartVO cVo) {
		String sql = "insert into cart " + "values (LPAD(cart_seq.nextval,5,0), ?, ?, ?, ?, ?, ?, ?, '', ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cVo.getMid());
			pstmt.setString(2, cVo.getPid());
			pstmt.setString(3, cVo.getImg());
			pstmt.setString(4, cVo.getName());
			pstmt.setInt(5, cVo.getAmount());
			pstmt.setString(6, cVo.getColor());
			pstmt.setString(7, cVo.getSize());
			pstmt.setInt(8, cVo.getPrice());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void updateAmount(CartVO existingCVo, int newAmount) {
		String sql = "update cart set P_AMOUNT=? where CART_NUM=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		int totalAmount = existingCVo.getAmount() + newAmount;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, totalAmount);
			System.out.println(existingCVo.getAmount() + "+" + newAmount + "+" + totalAmount);
			pstmt.setString(2, existingCVo.getCart_num());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void deleteCart(String[] numArr) {
		String sql = "Delete from cart where ";
		for (int i = 0; i < numArr.length; i++) {
			if (i == 0)
				sql += "CART_NUM=" + numArr[i];
			else
				sql += " OR CART_NUM=" + numArr[i];
		}
		System.out.println(sql);

		Connection conn = null;
		Statement stmt = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt);
		}
	}

	public List<CartVO> selectCartByNumArr(String[] cart_num_arr) {
		List<CartVO> list = new ArrayList<CartVO>();
		String str = "";
		String sql = "";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		for (int i = 0; i < cart_num_arr.length; i++) {
			if (i == 0) {
				str += "'" + cart_num_arr[i] + "'";
			} else {
				str += ", '" + cart_num_arr[i] + "'";
			}
		}

		try {
			sql = "select * from CART where CART_NUM in(" + str + ")";
			System.out.println(sql);

			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				CartVO cVo = new CartVO();
				cVo.setCart_num(rs.getString("CART_NUM"));
				cVo.setMid(rs.getString("M_ID"));
				cVo.setPid(rs.getString("P_ID"));
				cVo.setImg(rs.getString("P_IMG"));
				cVo.setName(rs.getString("P_NAME"));
				cVo.setAmount(rs.getInt("P_AMOUNT"));
				cVo.setColor(rs.getString("P_COLOR"));
				cVo.setSize(rs.getString("P_SIZE"));
				cVo.setOption(rs.getString("P_OPTION"));
				cVo.setPrice(rs.getInt("P_PRICE"));

				list.add(cVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

}
