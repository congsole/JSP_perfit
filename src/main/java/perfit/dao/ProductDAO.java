package perfit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import perfit.dto.Criteria;
import perfit.dto.ProductVO;
import perfit.util.DBManager;

public class ProductDAO {
	private ProductDAO() {
	}

	private static ProductDAO instance = new ProductDAO();

	public static ProductDAO getInstance() {
		return instance;
	}
//	public List<ProductVO> getListWithPaging(Criteria cri) {
//		String sql = "select * from ("
//				+ "select * from (select rownum rn, p_id, p_type, p_category, p_name, p_price, p_date, p_color_01, p_color_02, p_color_03, p_color_04, p_color_05, p_color_06, p_color_07, p_color_08, p_color_09, p_color_10 from product order by p_date desc)"
//				+ " where rownum <= ? * 12)"
//				+ " where rn > (?-1)*12";
//		List<ProductVO> list = new ArrayList<ProductVO>();
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		try {
//			conn = DBManager.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, cri.getPageNum());
//			pstmt.setInt(2, cri.getPageNum());
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				ProductVO pVo = new ProductVO();
//				pVo.setid(rs.getString("P_ID"));
//				pVo.settype(rs.getString("P_TYPE"));
//				pVo.setcategory(rs.getString("P_CATEGORY"));
//				pVo.setname(rs.getString("P_NAME"));
//				pVo.setprice(rs.getInt("P_PRICE"));
//				pVo.setcolor_01(rs.getString("P_COLOR_01"));
//				pVo.setcolor_02(rs.getString("P_COLOR_02"));
//				pVo.setcolor_03(rs.getString("P_COLOR_03"));
//				pVo.setcolor_04(rs.getString("P_COLOR_04"));
//				pVo.setcolor_05(rs.getString("P_COLOR_05"));
//				pVo.setcolor_06(rs.getString("P_COLOR_06"));
//				pVo.setcolor_07(rs.getString("P_COLOR_07"));
//				pVo.setcolor_08(rs.getString("P_COLOR_08"));
//				pVo.setcolor_09(rs.getString("P_COLOR_09"));
//				pVo.setcolor_10(rs.getString("P_COLOR_10"));
//				list.add(pVo);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			DBManager.close(conn, pstmt, rs);
//		}
//		return list;
//	}

	public List<ProductVO> selectAllProducts() {
		String sql = "SELECT * FROM PRODUCT ORDER BY P_ID";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				ProductVO pVo = new ProductVO();
				pVo.setid(rs.getString("P_ID"));
				pVo.settype(rs.getString("P_TYPE"));
				pVo.setcategory(rs.getString("P_CATEGORY"));
				pVo.setname(rs.getString("P_NAME"));
				pVo.setprice(rs.getInt("P_PRICE"));
				pVo.setdescription(rs.getString("P_DESCRIPTION"));
				pVo.setfabric(rs.getString("P_FABRIC"));
				pVo.setcleaning(rs.getString("P_CLEANING"));
				pVo.setdate(rs.getTimestamp("P_DATE"));
				pVo.setshape(rs.getString("P_SHAPE"));
				pVo.setcolor_01(rs.getString("P_COLOR_01"));
				pVo.setcolor_02(rs.getString("P_COLOR_02"));
				pVo.setcolor_03(rs.getString("P_COLOR_03"));
				pVo.setcolor_04(rs.getString("P_COLOR_04"));
				pVo.setcolor_05(rs.getString("P_COLOR_05"));
				pVo.setcolor_06(rs.getString("P_COLOR_06"));
				pVo.setcolor_07(rs.getString("P_COLOR_07"));
				pVo.setcolor_08(rs.getString("P_COLOR_08"));
				pVo.setcolor_09(rs.getString("P_COLOR_09"));
				pVo.setcolor_10(rs.getString("P_COLOR_10"));
				pVo.setsize_01(rs.getString("P_SIZE_01"));
				pVo.setsize_02(rs.getString("P_SIZE_02"));
				pVo.setsize_03(rs.getString("P_SIZE_03"));
				pVo.setsize_04(rs.getString("P_SIZE_04"));
				pVo.setsize_05(rs.getString("P_SIZE_05"));
				pVo.setsize_06(rs.getString("P_SIZE_06"));
				pVo.setsize_07(rs.getString("P_SIZE_07"));
				pVo.setsize_08(rs.getString("P_SIZE_08"));
				pVo.setsize_09(rs.getString("P_SIZE_09"));
				pVo.setsize_10(rs.getString("P_SIZE_10"));
				pVo.setoption_01(rs.getString("P_OPTION_01"));
				pVo.setoption_02(rs.getString("P_OPTION_02"));
				pVo.setoption_03(rs.getString("P_OPTION_03"));
				pVo.setoption_04(rs.getString("P_OPTION_04"));
				pVo.setoption_05(rs.getString("P_OPTION_05"));
				pVo.setoption_06(rs.getString("P_OPTION_06"));
				pVo.setoption_07(rs.getString("P_OPTION_07"));
				pVo.setoption_08(rs.getString("P_OPTION_08"));
				pVo.setoption_09(rs.getString("P_OPTION_09"));
				pVo.setoption_10(rs.getString("P_OPTION_10"));

				pVo.setCompany(rs.getString("COMPANY"));
				pVo.setCountry(rs.getString("COUNTRY"));
				pVo.setWarranty(rs.getString("WARRANTY"));
				pVo.setAs(rs.getString("A_S"));

				list.add(pVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}

		return list;
	}

	@SuppressWarnings("P_resource")
	public void insertProduct(ProductVO pVo) {
		String sql01 = "SELECT CODE FROM PRODUCT_CODE WHERE TYPE_NAME=? AND CATE_NAME=?";
		String sql02 = "";
		Connection conn = null;
		PreparedStatement pstmt01 = null;
		PreparedStatement pstmt02 = null;
		ResultSet rs = null;
		String code = "";
		try {
			conn = DBManager.getConnection();

			pstmt01 = conn.prepareStatement(sql01);
			pstmt01.setString(1, pVo.gettype());
			pstmt01.setString(2, pVo.getcategory());
			rs = pstmt01.executeQuery();
			if (rs.next()) {
				code = rs.getString("CODE");
				System.out.println(code);
			}

			sql02 = "INSERT INTO PRODUCT" + " VALUES(CONCAT('" + code
					+ "',LPAD(P_ID_SEQ.NEXTVAL,5,0)),?,?,?,?,?,?,?,sysdate,'',  ?,?,?,?,?,?,?,?,?,?,   ?,?,?,?,?,?,?,?,?,?    ,?,?,?,?,?,?,?,?,?,?,    ?,?,?,?)";
			pstmt02 = conn.prepareStatement(sql02);

//			pstmt02.setString(1, code);
			pstmt02.setString(1, pVo.gettype());
			pstmt02.setString(2, pVo.getcategory());
			pstmt02.setString(3, pVo.getname());
			pstmt02.setInt(4, pVo.getprice());

			pstmt02.setString(5, pVo.getdescription());

			pstmt02.setString(6, pVo.getfabric());
			pstmt02.setString(7, pVo.getcleaning());
			// sysdate
			// shape

			pstmt02.setString(8, pVo.getcolor_01());
			pstmt02.setString(9, pVo.getcolor_02());
			pstmt02.setString(10, pVo.getcolor_03());
			pstmt02.setString(11, pVo.getcolor_04());
			pstmt02.setString(12, pVo.getcolor_05());
			pstmt02.setString(13, pVo.getcolor_06());
			pstmt02.setString(14, pVo.getcolor_07());
			pstmt02.setString(15, pVo.getcolor_08());
			pstmt02.setString(16, pVo.getcolor_09());
			pstmt02.setString(17, pVo.getcolor_10());

			pstmt02.setString(18, pVo.getsize_01());
			pstmt02.setString(19, pVo.getsize_02());
			pstmt02.setString(20, pVo.getsize_03());
			pstmt02.setString(21, pVo.getsize_04());
			pstmt02.setString(22, pVo.getsize_05());
			pstmt02.setString(23, pVo.getsize_06());
			pstmt02.setString(24, pVo.getsize_07());
			pstmt02.setString(25, pVo.getsize_08());
			pstmt02.setString(26, pVo.getsize_09());
			pstmt02.setString(27, pVo.getsize_10());

			pstmt02.setString(28, pVo.getoption_01());
			pstmt02.setString(29, pVo.getoption_02());
			pstmt02.setString(30, pVo.getoption_03());
			pstmt02.setString(31, pVo.getoption_04());
			pstmt02.setString(32, pVo.getoption_05());
			pstmt02.setString(33, pVo.getoption_06());
			pstmt02.setString(34, pVo.getoption_07());
			pstmt02.setString(35, pVo.getoption_08());
			pstmt02.setString(36, pVo.getoption_09());
			pstmt02.setString(37, pVo.getoption_10());

			pstmt02.setString(38, pVo.getCompany());
			pstmt02.setString(39, pVo.getCountry());
			pstmt02.setString(40, pVo.getWarranty());
			pstmt02.setString(41, pVo.getAs());
			pstmt02.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt01, rs);
			DBManager.close(conn, pstmt02);
		}
	}

	public void getReadyProduct(ProductVO pVo) {
		Connection conn = null;
		Statement stmt = null;
		String sql = "";

		String id = pVo.getid();
		String c01 = pVo.getcolor_01();
		String c02 = pVo.getcolor_02();
		String c03 = pVo.getcolor_03();
		String c04 = pVo.getcolor_04();
		String c05 = pVo.getcolor_05();
		String c06 = pVo.getcolor_06();
		String c07 = pVo.getcolor_07();
		String c08 = pVo.getcolor_08();
		String c09 = pVo.getcolor_09();
		String c10 = pVo.getcolor_10();
		String[] colors = { c01, c02, c03, c04, c05, c06, c07, c08, c09, c10 };

		String s01 = pVo.getsize_01();
		String s02 = pVo.getsize_02();
		String s03 = pVo.getsize_03();
		String s04 = pVo.getsize_04();
		String s05 = pVo.getsize_05();
		String s06 = pVo.getsize_06();
		String s07 = pVo.getsize_07();
		String s08 = pVo.getsize_08();
		String s09 = pVo.getsize_09();
		String s10 = pVo.getsize_10();
		String[] sizes = { s01, s02, s03, s04, s05, s06, s07, s08, s09, s10 };

		for (int i = 0; i < 10; i++) {
			if (colors[i] != null) {
				for (int j = 0; j < 10; j++) {
					if (sizes[j] != null) {
						sql = "insert into PRODUCT_STATUS values('" + id + "', '" + colors[i] + "', '" + sizes[j]
								+ "', '',  'ready')";
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
				}
			}
		}
	}

	public ProductVO selectOneProductById(String id) {
		ProductVO pVo = null;
		String sql = "select * from product where p_id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				pVo = new ProductVO();
				pVo.setid(rs.getString("P_ID"));
				pVo.settype(rs.getString("P_TYPE"));
				pVo.setcategory(rs.getString("P_CATEGORY"));
				pVo.setname(rs.getString("P_NAME"));
				pVo.setprice(rs.getInt("P_PRICE"));
				pVo.setdescription(rs.getString("P_DESCRIPTION"));
				pVo.setfabric(rs.getString("P_FABRIC"));
				pVo.setcleaning(rs.getString("P_CLEANING"));
				pVo.setdate(rs.getTimestamp("P_DATE"));
				pVo.setshape(rs.getString("P_SHAPE"));
				pVo.setcolor_01(rs.getString("P_COLOR_01"));
				pVo.setcolor_02(rs.getString("P_COLOR_02"));
				pVo.setcolor_03(rs.getString("P_COLOR_03"));
				pVo.setcolor_04(rs.getString("P_COLOR_04"));
				pVo.setcolor_05(rs.getString("P_COLOR_05"));
				pVo.setcolor_06(rs.getString("P_COLOR_06"));
				pVo.setcolor_07(rs.getString("P_COLOR_07"));
				pVo.setcolor_08(rs.getString("P_COLOR_08"));
				pVo.setcolor_09(rs.getString("P_COLOR_09"));
				pVo.setcolor_10(rs.getString("P_COLOR_10"));
				pVo.setsize_01(rs.getString("P_SIZE_01"));
				pVo.setsize_02(rs.getString("P_SIZE_02"));
				pVo.setsize_03(rs.getString("P_SIZE_03"));
				pVo.setsize_04(rs.getString("P_SIZE_04"));
				pVo.setsize_05(rs.getString("P_SIZE_05"));
				pVo.setsize_06(rs.getString("P_SIZE_06"));
				pVo.setsize_07(rs.getString("P_SIZE_07"));
				pVo.setsize_08(rs.getString("P_SIZE_08"));
				pVo.setsize_09(rs.getString("P_SIZE_09"));
				pVo.setsize_10(rs.getString("P_SIZE_10"));
				pVo.setoption_01(rs.getString("P_OPTION_01"));
				pVo.setoption_02(rs.getString("P_OPTION_02"));
				pVo.setoption_03(rs.getString("P_OPTION_03"));
				pVo.setoption_04(rs.getString("P_OPTION_04"));
				pVo.setoption_05(rs.getString("P_OPTION_05"));
				pVo.setoption_06(rs.getString("P_OPTION_06"));
				pVo.setoption_07(rs.getString("P_OPTION_07"));
				pVo.setoption_08(rs.getString("P_OPTION_08"));
				pVo.setoption_09(rs.getString("P_OPTION_09"));
				pVo.setoption_10(rs.getString("P_OPTION_10"));
				pVo.setCompany(rs.getString("COMPANY"));
				pVo.setCountry(rs.getString("COUNTRY"));
				pVo.setWarranty(rs.getString("WARRANTY"));
				pVo.setAs(rs.getString("A_S"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return pVo;
	}

	public ProductVO selectOneProductByName(String name) {
		ProductVO pVo = null;
		String sql = "select * from product where p_name = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				pVo = new ProductVO();
				pVo.setid(rs.getString("P_ID"));
				pVo.settype(rs.getString("P_TYPE"));
				pVo.setcategory(rs.getString("P_CATEGORY"));
				pVo.setname(rs.getString("P_NAME"));
				pVo.setprice(rs.getInt("P_PRICE"));
				pVo.setdescription(rs.getString("P_DESCRIPTION"));
				pVo.setfabric(rs.getString("P_FABRIC"));
				pVo.setcleaning(rs.getString("P_CLEANING"));
				pVo.setdate(rs.getTimestamp("P_DATE"));
				pVo.setshape(rs.getString("P_SHAPE"));
				pVo.setcolor_01(rs.getString("P_COLOR_01"));
				pVo.setcolor_02(rs.getString("P_COLOR_02"));
				pVo.setcolor_03(rs.getString("P_COLOR_03"));
				pVo.setcolor_04(rs.getString("P_COLOR_04"));
				pVo.setcolor_05(rs.getString("P_COLOR_05"));
				pVo.setcolor_06(rs.getString("P_COLOR_06"));
				pVo.setcolor_07(rs.getString("P_COLOR_07"));
				pVo.setcolor_08(rs.getString("P_COLOR_08"));
				pVo.setcolor_09(rs.getString("P_COLOR_09"));
				pVo.setcolor_10(rs.getString("P_COLOR_10"));
				pVo.setsize_01(rs.getString("P_SIZE_01"));
				pVo.setsize_02(rs.getString("P_SIZE_02"));
				pVo.setsize_03(rs.getString("P_SIZE_03"));
				pVo.setsize_04(rs.getString("P_SIZE_04"));
				pVo.setsize_05(rs.getString("P_SIZE_05"));
				pVo.setsize_06(rs.getString("P_SIZE_06"));
				pVo.setsize_07(rs.getString("P_SIZE_07"));
				pVo.setsize_08(rs.getString("P_SIZE_08"));
				pVo.setsize_09(rs.getString("P_SIZE_09"));
				pVo.setsize_10(rs.getString("P_SIZE_10"));
				pVo.setoption_01(rs.getString("P_OPTION_01"));
				pVo.setoption_02(rs.getString("P_OPTION_02"));
				pVo.setoption_03(rs.getString("P_OPTION_03"));
				pVo.setoption_04(rs.getString("P_OPTION_04"));
				pVo.setoption_05(rs.getString("P_OPTION_05"));
				pVo.setoption_06(rs.getString("P_OPTION_06"));
				pVo.setoption_07(rs.getString("P_OPTION_07"));
				pVo.setoption_08(rs.getString("P_OPTION_08"));
				pVo.setoption_09(rs.getString("P_OPTION_09"));
				pVo.setoption_10(rs.getString("P_OPTION_10"));
				pVo.setCompany(rs.getString("COMPANY"));
				pVo.setCountry(rs.getString("COUNTRY"));
				pVo.setWarranty(rs.getString("WARRANTY"));
				pVo.setAs(rs.getString("A_S"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return pVo;
	}

	public String selectLatestProduct() {
		String sql = "select P_ID from PRODUCT where P_DATE = (select max(P_DATE) from PRODUCT)";
		String id = "";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				id = rs.getString("P_ID");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt);
		}
		return id;
	}

	public int deleteOneProductById(String id) {
		int result = 0;
		String sql = "delete from product where p_id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
			result = -1;
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	public List<ProductVO> headerSearch(String word) {
		String sql = "SELECT * FROM PRODUCT " + "where P_NAME LIKE '%" + word + "%' " + "or P_TYPE LIKE '%" + word
				+ "%' " + "or P_CATEGORY LIKE '%" + word + "%' " + "or P_DESCRIPTION LIKE '%" + word + "%' "
				+ "or P_FABRIC LIKE '%" + word + "%' ";
		List<ProductVO> list = new ArrayList<ProductVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			System.out.println(sql);
			while (rs.next()) {
				System.out.println(rs.getString("P_NAME"));
				ProductVO pVo = new ProductVO();
				pVo.setid(rs.getString("P_ID"));
				pVo.settype(rs.getString("P_TYPE"));
				pVo.setcategory(rs.getString("P_CATEGORY"));
				pVo.setname(rs.getString("P_NAME"));
				pVo.setprice(rs.getInt("P_PRICE"));
				pVo.setdescription(rs.getString("P_DESCRIPTION"));
				pVo.setfabric(rs.getString("P_FABRIC"));
				pVo.setcleaning(rs.getString("P_CLEANING"));
				pVo.setdate(rs.getTimestamp("P_DATE"));
				pVo.setshape(rs.getString("P_SHAPE"));
				pVo.setcolor_01(rs.getString("P_COLOR_01"));
				pVo.setcolor_02(rs.getString("P_COLOR_02"));
				pVo.setcolor_03(rs.getString("P_COLOR_03"));
				pVo.setcolor_04(rs.getString("P_COLOR_04"));
				pVo.setcolor_05(rs.getString("P_COLOR_05"));
				pVo.setcolor_06(rs.getString("P_COLOR_06"));
				pVo.setcolor_07(rs.getString("P_COLOR_07"));
				pVo.setcolor_08(rs.getString("P_COLOR_08"));
				pVo.setcolor_09(rs.getString("P_COLOR_09"));
				pVo.setcolor_10(rs.getString("P_COLOR_10"));
				pVo.setsize_01(rs.getString("P_SIZE_01"));
				pVo.setsize_02(rs.getString("P_SIZE_02"));
				pVo.setsize_03(rs.getString("P_SIZE_03"));
				pVo.setsize_04(rs.getString("P_SIZE_04"));
				pVo.setsize_05(rs.getString("P_SIZE_05"));
				pVo.setsize_06(rs.getString("P_SIZE_06"));
				pVo.setsize_07(rs.getString("P_SIZE_07"));
				pVo.setsize_08(rs.getString("P_SIZE_08"));
				pVo.setsize_09(rs.getString("P_SIZE_09"));
				pVo.setsize_10(rs.getString("P_SIZE_10"));
				pVo.setoption_01(rs.getString("P_OPTION_01"));
				pVo.setoption_02(rs.getString("P_OPTION_02"));
				pVo.setoption_03(rs.getString("P_OPTION_03"));
				pVo.setoption_04(rs.getString("P_OPTION_04"));
				pVo.setoption_05(rs.getString("P_OPTION_05"));
				pVo.setoption_06(rs.getString("P_OPTION_06"));
				pVo.setoption_07(rs.getString("P_OPTION_07"));
				pVo.setoption_08(rs.getString("P_OPTION_08"));
				pVo.setoption_09(rs.getString("P_OPTION_09"));
				pVo.setoption_10(rs.getString("P_OPTION_10"));
				pVo.setCompany(rs.getString("COMPANY"));
				pVo.setCountry(rs.getString("COUNTRY"));
				pVo.setWarranty(rs.getString("WARRANTY"));
				pVo.setAs(rs.getString("A_S"));

				list.add(pVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}

		return list;
	}

	public List<ProductVO> selectSearchedProduct(String price_L, String price_R, String[] shape_chk) {
		ProductVO pVo = null;
		List<ProductVO> list = new ArrayList<ProductVO>();
		String str = "";
		String sql = "";

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		for (int i = 0; i < shape_chk.length; i++) {
			if (i == 0) {
				str += "'" + shape_chk[i] + "'";
			} else {
				str += ", '" + shape_chk[i] + "'";
			}
		}

		try {
			sql = "select * from product where p_price>=" + price_L + " and p_price<=" + price_R + " and p_shape in("
					+ str + ")";
			System.out.println(sql);

			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				pVo = new ProductVO();
				pVo.setid(rs.getString("P_ID"));
				pVo.settype(rs.getString("P_TYPE"));
				pVo.setcategory(rs.getString("P_CATEGORY"));
				pVo.setname(rs.getString("P_NAME"));
				pVo.setprice(rs.getInt("P_PRICE"));
				pVo.setdescription(rs.getString("P_DESCRIPTION"));
				pVo.setfabric(rs.getString("P_FABRIC"));
				pVo.setcleaning(rs.getString("P_CLEANING"));
				pVo.setdate(rs.getTimestamp("P_DATE"));
				pVo.setshape(rs.getString("P_SHAPE"));
				pVo.setcolor_01(rs.getString("P_COLOR_01"));
				pVo.setcolor_02(rs.getString("P_COLOR_02"));
				pVo.setcolor_03(rs.getString("P_COLOR_03"));
				pVo.setcolor_04(rs.getString("P_COLOR_04"));
				pVo.setcolor_05(rs.getString("P_COLOR_05"));
				pVo.setcolor_06(rs.getString("P_COLOR_06"));
				pVo.setcolor_07(rs.getString("P_COLOR_07"));
				pVo.setcolor_08(rs.getString("P_COLOR_08"));
				pVo.setcolor_09(rs.getString("P_COLOR_09"));
				pVo.setcolor_10(rs.getString("P_COLOR_10"));
				pVo.setsize_01(rs.getString("P_SIZE_01"));
				pVo.setsize_02(rs.getString("P_SIZE_02"));
				pVo.setsize_03(rs.getString("P_SIZE_03"));
				pVo.setsize_04(rs.getString("P_SIZE_04"));
				pVo.setsize_05(rs.getString("P_SIZE_05"));
				pVo.setsize_06(rs.getString("P_SIZE_06"));
				pVo.setsize_07(rs.getString("P_SIZE_07"));
				pVo.setsize_08(rs.getString("P_SIZE_08"));
				pVo.setsize_09(rs.getString("P_SIZE_09"));
				pVo.setsize_10(rs.getString("P_SIZE_10"));
				pVo.setoption_01(rs.getString("P_OPTION_01"));
				pVo.setoption_02(rs.getString("P_OPTION_02"));
				pVo.setoption_03(rs.getString("P_OPTION_03"));
				pVo.setoption_04(rs.getString("P_OPTION_04"));
				pVo.setoption_05(rs.getString("P_OPTION_05"));
				pVo.setoption_06(rs.getString("P_OPTION_06"));
				pVo.setoption_07(rs.getString("P_OPTION_07"));
				pVo.setoption_08(rs.getString("P_OPTION_08"));
				pVo.setoption_09(rs.getString("P_OPTION_09"));
				pVo.setoption_10(rs.getString("P_OPTION_10"));
				pVo.setCompany(rs.getString("COMPANY"));
				pVo.setCountry(rs.getString("COUNTRY"));
				pVo.setWarranty(rs.getString("WARRANTY"));
				pVo.setAs(rs.getString("A_S"));

				list.add(pVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public void shapeUpdate(ProductVO pVo) {
		String sql = "Update Product set P_SHAPE=? where P_ID=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pVo.getshape());
			System.out.println(pVo.getshape() + "/" + pVo.getid());
			pstmt.setString(2, pVo.getid());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public List<String> todayTop8Products() {
		String sql = "SELECT * FROM (SELECT P_ID, SUM(P_AMOUNT) AS QUANTITY FROM (select * from ORDER_TBL, ORDER_DETAIL WHERE substr(ORDER_DATE, 1, 8) = substr(sysdate, 1,8) and ORDER_TBL.ORDER_NUM = ORDER_DETAIL.ORDER_NUM)"
				+ "GROUP BY P_ID ORDER BY QUANTITY DESC) WHERE ROWNUM<9";
		List<String> list = new ArrayList<String>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String id = rs.getString("P_ID");
				list.add(id);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}

		return list;
	}

	public List<String> new8Products() {

		String sql = "SELECT P_ID, P_DATE FROM (SELECT P_ID, P_DATE FROM PRODUCT ORDER BY P_DATE DESC)"
				+ " WHERE ROWNUM<9";

		List<String> list = new ArrayList<String>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String id = rs.getString("P_ID");
				list.add(id);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}

		return list;
	}

	public int thisTypeTotal(String type) {
		String sql = "select count(*) TOTAL from product where p_type='" + type + "'";
		int total = 0;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				total = rs.getInt("TOTAL");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return total;
	}

	public List<ProductVO> recommend(String shape) {
		List<ProductVO> list = new ArrayList<>();
		ProductVO pVo;
		String sql = "SELECT * FROM PRODUCT WHERE p_shape='" + shape + "'";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				pVo = new ProductVO();
				pVo.setid(rs.getString("P_ID"));
//				pVo.settype(rs.getString("P_TYPE"));
//				pVo.setcategory(rs.getString("P_CATEGORY"));
				pVo.setname(rs.getString("P_NAME"));
				pVo.setprice(rs.getInt("P_PRICE"));
//				pVo.setdescription(rs.getString("P_DESCRIPTION"));
//				pVo.setfabric(rs.getString("P_FABRIC"));
//				pVo.setcleaning(rs.getString("P_CLEANING"));
//				pVo.setdate(rs.getTimestamp("P_DATE"));
//				pVo.setshape(rs.getString("P_SHAPE"));
				pVo.setcolor_01(rs.getString("P_COLOR_01"));
				pVo.setcolor_02(rs.getString("P_COLOR_02"));
				pVo.setcolor_03(rs.getString("P_COLOR_03"));
				pVo.setcolor_04(rs.getString("P_COLOR_04"));
				pVo.setcolor_05(rs.getString("P_COLOR_05"));
				pVo.setcolor_06(rs.getString("P_COLOR_06"));
				pVo.setcolor_07(rs.getString("P_COLOR_07"));
				pVo.setcolor_08(rs.getString("P_COLOR_08"));
				pVo.setcolor_09(rs.getString("P_COLOR_09"));
				pVo.setcolor_10(rs.getString("P_COLOR_10"));
//				pVo.setsize_01(rs.getString("P_SIZE_01"));
//				pVo.setsize_02(rs.getString("P_SIZE_02"));
//				pVo.setsize_03(rs.getString("P_SIZE_03"));
//				pVo.setsize_04(rs.getString("P_SIZE_04"));
//				pVo.setsize_05(rs.getString("P_SIZE_05"));
//				pVo.setsize_06(rs.getString("P_SIZE_06"));
//				pVo.setsize_07(rs.getString("P_SIZE_07"));
//				pVo.setsize_08(rs.getString("P_SIZE_08"));
//				pVo.setsize_09(rs.getString("P_SIZE_09"));
//				pVo.setsize_10(rs.getString("P_SIZE_10"));
//				pVo.setoption_01(rs.getString("P_OPTION_01"));
//				pVo.setoption_02(rs.getString("P_OPTION_02"));
//				pVo.setoption_03(rs.getString("P_OPTION_03"));
//				pVo.setoption_04(rs.getString("P_OPTION_04"));
//				pVo.setoption_05(rs.getString("P_OPTION_05"));
//				pVo.setoption_06(rs.getString("P_OPTION_06"));
//				pVo.setoption_07(rs.getString("P_OPTION_07"));
//				pVo.setoption_08(rs.getString("P_OPTION_08"));
//				pVo.setoption_09(rs.getString("P_OPTION_09"));
//				pVo.setoption_10(rs.getString("P_OPTION_10"));
//				pVo.setCompany(rs.getString("COMPANY"));
//				pVo.setCountry(rs.getString("COUNTRY"));
//				pVo.setWarranty(rs.getString("WARRANTY"));
//				pVo.setAs(rs.getString("A_S"));
				list.add(pVo);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);			
		}

		return list;
	}

}
