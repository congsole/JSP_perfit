package perfit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;

import perfit.dto.CartVO;
import perfit.dto.OrderDetailVO;
import perfit.dto.OrderVO;

import perfit.util.DBManager;

public class OrderDAO {
	private static OrderDAO instance = new OrderDAO();

	public static OrderDAO getInstance() {
		return instance;
	}

	public List<CartVO> shoppingBasketList() {
		String sql = "select * from CART order by cart_num";
		List<CartVO> list = new ArrayList<CartVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			System.out.println("SQL문 실행 완료");

			while (rs.next()) {
				CartVO cVo = new CartVO();
				cVo.setCart_num(rs.getString("CART_NUM"));
				cVo.setMid(rs.getString("M_ID"));
				cVo.setPid(rs.getString("P_ID"));
				cVo.setImg(rs.getString("P_IMG"));
				cVo.setName(rs.getString("P_NAME"));
				cVo.setAmount(rs.getInt("P_AMOUNT"));
				cVo.setSize(rs.getString("P_SIZE"));
				cVo.setColor(rs.getString("P_COLOR"));
				cVo.setOption(rs.getString("P_OPTION"));
				cVo.setPrice(rs.getInt("P_PRICE"));
				list.add(cVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt);
		}
		return list;
	}

	public List<CartVO> paymentList(String[] cart_num) {
		String sql = "select * from CART order by " + cart_num;
		List<CartVO> list = new ArrayList<CartVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			System.out.println("SQL문 실행 완료");

			while (rs.next()) {
				CartVO cVo = new CartVO();
				cVo.setCart_num(rs.getString("CART_NUM"));
				cVo.setMid(rs.getString("M_ID"));
				cVo.setPid(rs.getString("P_ID"));
				cVo.setImg(rs.getString("P_IMG"));
				cVo.setName(rs.getString("P_NAME"));
				cVo.setAmount(rs.getInt("P_AMOUNT"));
				cVo.setSize(rs.getString("P_SIZE"));
				cVo.setColor(rs.getString("P_COLOR"));
				cVo.setOption(rs.getString("P_OPTION"));
				cVo.setPrice(rs.getInt("P_PRICE"));
				list.add(cVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt);
		}
		return list;
	}

	public List<OrderVO> orderSearchAllList() {
		String sql = "select * from ( select * from ORDER_TBL order by order_num desc ) where rownum <= 10";
		List<OrderVO> list = new ArrayList<OrderVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				OrderVO oVo = new OrderVO();
				oVo.setOrder_num(rs.getString("order_num"));
				oVo.setM_id(rs.getString("m_id"));
				oVo.setD_name(rs.getString("d_name"));
				oVo.setD_phone(rs.getString("d_phone"));
				oVo.setD_zip(rs.getString("d_zip"));
				oVo.setD_address1(rs.getString("d_address1"));
				oVo.setD_address2(rs.getString("d_address2"));
				oVo.setD_email(rs.getString("d_email"));
				oVo.setOrder_date(rs.getTimestamp("order_date"));
				oVo.setD_date(rs.getTimestamp("d_date"));
				list.add(oVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt);
		}
		return list;
	}

	public List<OrderVO> orderSearchByCondition(String searchField, String searchText) {
		String sql = "select * from ORDER_TBL where order_num";
		List<OrderVO> list = new ArrayList<OrderVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			if (searchText != null && !searchText.equals("")) {
				sql += " like '%" + searchText.trim() + "%' order by order_num";
			}
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				OrderVO oVo = new OrderVO();
				oVo.setOrder_num(rs.getString("order_num"));
				oVo.setM_id(rs.getString("m_id"));
				oVo.setD_name(rs.getString("d_name"));
				oVo.setD_phone(rs.getString("d_phone"));
				oVo.setD_zip(rs.getString("d_zip"));
				oVo.setD_address1(rs.getString("d_address1"));
				oVo.setD_address2(rs.getString("d_address2"));
				oVo.setD_email(rs.getString("d_email"));
				oVo.setOrder_date(rs.getTimestamp("order_date"));
				oVo.setD_date(rs.getTimestamp("d_date"));
				list.add(oVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public List<OrderVO> orderSearchByDate(String ds, String dl) {
		String sql = "select * from ORDER_TBL where order_date";
		List<OrderVO> list = new ArrayList<OrderVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			if ((ds != null && !ds.equals("")) && (dl != null && !dl.equals(""))) {
				sql += " between to_date('" + ds + "','YYYY-MM-DD') and to_date('" + dl
						+ "','YYYY-MM-DD') order by order_num";
			}
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				OrderVO oVo = new OrderVO();
				oVo.setOrder_num(rs.getString("order_num"));
				oVo.setM_id(rs.getString("m_id"));
				oVo.setD_name(rs.getString("d_name"));
				oVo.setD_phone(rs.getString("d_phone"));
				oVo.setD_zip(rs.getString("d_zip"));
				oVo.setD_address1(rs.getString("d_address1"));
				oVo.setD_address2(rs.getString("d_address2"));
				oVo.setD_email(rs.getString("d_email"));
				oVo.setOrder_date(rs.getTimestamp("order_date"));
				oVo.setD_date(rs.getTimestamp("d_date"));
				list.add(oVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public List<CartVO> basketSearchByCondition(String searchField, String searchText) {
		String sql = "select * from CART where " + searchField.trim();
		List<CartVO> list = new ArrayList<CartVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			if (searchText != null && !searchText.equals("")) {
				sql += " like '%" + searchText.trim() + "%' order by m_id";
			}
			System.out.println(sql);
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CartVO cVo = new CartVO();
				cVo.setCart_num(rs.getString("CART_NUM"));
				cVo.setMid(rs.getString("M_ID"));
				cVo.setPid(rs.getString("P_ID"));
				cVo.setImg(rs.getString("P_IMG"));
				cVo.setName(rs.getString("P_NAME"));
				cVo.setAmount(rs.getInt("P_AMOUNT"));
				cVo.setSize(rs.getString("P_SIZE"));
				cVo.setColor(rs.getString("P_COLOR"));
				cVo.setOption(rs.getString("P_OPTION"));
				cVo.setPrice(rs.getInt("P_PRICE"));
				list.add(cVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	public void addOrder(OrderVO oVo) {
		String sql = "insert into ORDER_TBL(M_ID, D_NAME, D_PHONE, D_ZIP, D_ADDRESS1, D_ADDRESS2, ORDER_DATE, D_EMAIL) values(?, ?, ?, ?, ?, ?, now(), ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, oVo.getM_id());
			pstmt.setString(2, oVo.getD_name());
			pstmt.setString(3, oVo.getD_phone());
			pstmt.setString(4, oVo.getD_zip());
			pstmt.setString(5, oVo.getD_address1());
			pstmt.setString(6, oVo.getD_address2());
			pstmt.setString(7, oVo.getD_email());

			System.out.println(sql);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public String getLatesOrdertNum() {
		String latestOrderNum = "";
		String sql = "select ORDER_NUM from ORDER_TBL WHERE 1=1 "
				+ "AND ORDER_NUM IN (SELECT MAX(ORDER_NUM) FROM ORDER_TBL)";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				latestOrderNum = rs.getString("ORDER_NUM");
				System.out.println(latestOrderNum);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return latestOrderNum;
	}

	public void addOrderDetail(OrderDetailVO odVo) {
		String sql = "insert into ORDER_DETAIL(ORDER_NUM_D, P_ID_D, P_IMG, P_NAME, P_AMOUNT, P_COLOR, P_SIZE, P_PRICE) values(?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, odVo.getOrder_num());
			pstmt.setString(2, odVo.getP_id());
			pstmt.setString(3, odVo.getP_img());
			pstmt.setString(4, odVo.getP_name());
			pstmt.setInt(5, odVo.getP_amount());
			pstmt.setString(6, odVo.getP_color());
			pstmt.setString(7, odVo.getP_size());
			pstmt.setInt(8, odVo.getP_price());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public List<OrderVO> orderList(String mid) {
		List<OrderVO> list = new ArrayList<OrderVO>();
		String sql = "select * from ORDER_TBL where M_ID ='" + mid + "'";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				OrderVO oVo = new OrderVO();
				oVo.setOrder_num(rs.getString("ORDER_NUM"));
				oVo.setOrder_date(rs.getTimestamp("ORDER_DATE"));
				oVo.setD_date(rs.getTimestamp("D_DATE"));
				list.add(oVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt);
		}
		return list;
	}

	public List<OrderDetailVO> orderDetailList(String order_num) {
		List<OrderDetailVO> list = new ArrayList<OrderDetailVO>();
		String sql = "select * from ORDER_DETAIL where ORDER_NUM_D='" + order_num + "'";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		System.out.println(sql);
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				OrderDetailVO odVo = new OrderDetailVO();
				odVo.setOrder_detail_num(rs.getString("ORDER_DETAIL_NUM"));
				odVo.setOrder_num(rs.getString("ORDER_NUM"));
				odVo.setP_id(rs.getString("P_ID"));
				odVo.setP_img(rs.getString("P_IMG"));
				odVo.setP_name(rs.getString("P_NAME"));
				odVo.setP_amount(rs.getInt("P_AMOUNT"));
				odVo.setP_color(rs.getString("P_COLOR"));
				odVo.setP_size(rs.getString("P_SIZE"));
				odVo.setP_option(rs.getString("P_OPTION"));
				odVo.setP_price(rs.getInt("P_PRICE"));
				list.add(odVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt);
		}
		System.out.println(list.toString());
		return list;
	}

	public List<OrderVO> selectOrderByOrderNum(String ordernum) {
		String sql = "select * from ORDER_TBL where order_num like '" + ordernum + "'";
		List<OrderVO> list = new ArrayList<OrderVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		System.out.println(sql);

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				OrderVO oVo = new OrderVO();
				oVo.setD_name(rs.getString("d_name"));
				oVo.setD_phone(rs.getString("d_phone"));
				oVo.setD_zip(rs.getString("d_zip"));
				oVo.setD_address1(rs.getString("d_address1"));
				oVo.setD_address2(rs.getString("d_address2"));
				oVo.setD_email(rs.getString("d_email"));
				list.add(oVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public List<OrderVO> ordertblList() {
		String sql = "select * from ORDER_TBL order by order_num";
		List<OrderVO> list = new ArrayList<OrderVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				OrderVO oVo = new OrderVO();
				oVo.setOrder_num(rs.getString("order_num"));
				oVo.setM_id(rs.getString("m_id"));
				oVo.setD_name(rs.getString("d_name"));
				oVo.setD_phone(rs.getString("d_phone"));
				oVo.setD_zip(rs.getString("d_zip"));
				oVo.setD_address1(rs.getString("d_address1"));
				oVo.setD_address2(rs.getString("d_address2"));
				oVo.setOrder_date(rs.getTimestamp("order_date"));
				oVo.setD_date(rs.getTimestamp("d_date"));
				oVo.setD_email(rs.getString("d_email"));
				oVo.setD_status(rs.getInt("d_status"));
				list.add(oVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public void delivery(String ordernum) {
		String sql = "update ORDER_TBL set d_date = now() where order_num = " + ordernum;

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void deliveryCom(String ordernum) {
		String sql = "update ORDER_TBL set d_status = 1 where order_num = " + ordernum;

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public int getStatusCount(String memId) {
		String sql = "select count(*) count from ORDER_TBL where m_id='" + memId + "'";
		int result = 0;

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				result = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}

		return result;
	}

	public int getStatusCount1(String memId) {
		String sql = "select count(*) count from ORDER_TBL where d_date is null and m_id='" + memId + "'";
		int result = 0;

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				result = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}

		return result;
	}

	public int getStatusCount2(String memId) {
		String sql = "select count(*) count from ORDER_TBL where d_date is not null and d_status is null and m_id='"
				+ memId + "'";
		int result = 0;

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				result = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}

		return result;
	}

	public int getStatusCount3(String memId) {
		String sql = "select count(*) count from ORDER_TBL where d_status = 1 and m_id='" + memId + "'";
		int result = 0;

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				result = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}

		return result;
	}

}
