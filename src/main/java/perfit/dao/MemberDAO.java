package perfit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import perfit.dto.MemberVO;
import perfit.util.DBManager;

public class MemberDAO {
	private MemberDAO() {
	}

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}

	public void insertMember(MemberVO mVo) {
		String sql = "INSERT INTO MEMBER"
				+ "(ID, PASSWORD, NAME, PHONE, SMS_YorN, ZIP, ADDRESS1, ADDRESS2, EMAIL, EMAIL_YorN) "
				+ "VALUES(?,?,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getId());
			pstmt.setString(2, mVo.getPassword());
			pstmt.setString(3, mVo.getName());
			pstmt.setString(4, mVo.getPhone());
			pstmt.setString(5, mVo.getSms_YorN());
			pstmt.setString(6, mVo.getZip());
			pstmt.setString(7, mVo.getAddress1());
			pstmt.setString(8, mVo.getAddress2());
			pstmt.setString(9, mVo.getEmail());
			pstmt.setString(10, mVo.getEmail_YorN());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public MemberVO getMember(String id) {
		MemberVO mVo = null;
		String sql = "SELECT * FROM MEMBER WHERE ID='" + id + "'";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				mVo = new MemberVO();
				mVo.setId(rs.getString("ID"));
				mVo.setPassword(rs.getString("PASSWORD"));
				mVo.setName(rs.getString("NAME"));
				mVo.setPhone(rs.getString("PHONE"));
				mVo.setSms_YorN(rs.getString("SMS_YORN"));
				mVo.setZip(rs.getString("ZIP"));
				mVo.setAddress1(rs.getString("ADDRESS1"));
				mVo.setAddress2(rs.getString("ADDRESS2"));
				mVo.setEmail(rs.getString("EMAIL"));
				mVo.setEmail_YorN(rs.getString("EMAIL_YORN"));
				mVo.setNickname(rs.getString("NICKNAME"));
				mVo.setMem_pic(rs.getString("MEM_PIC"));
				mVo.setShape(rs.getString("SHAPE"));
				mVo.setHeight(rs.getInt("HEIGHT"));
				mVo.setWeight(rs.getInt("WEIGHT"));
				mVo.setShoulder(rs.getInt("SHOULDER"));
				mVo.setBust(rs.getInt("BUST"));
				mVo.setArm_length(rs.getInt("ARM_LENGTH"));
				mVo.setArm_size(rs.getInt("ARM_SIZE"));
				mVo.setWaist(rs.getInt("WAIST"));
				mVo.setHip(rs.getInt("HIP"));
				mVo.setThigh(rs.getInt("THIGH"));
				mVo.setLeg_length(rs.getInt("LEG_LENGTH"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return mVo;
	}

	public int confirmID(String userid) {
		int result = -1;
		String sql = "SELECT ID FROM MEMBER WHERE ID=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 1;
			} else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}

	public int memCheck(String id, String pw) {
		int result = -1;
		String sql = "SELECT PASSWORD FROM MEMBER WHERE ID='" + id + "'";
		System.out.println(sql);
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			if (rs.next()) { // 회원
				if (rs.getString("PASSWORD") != null && rs.getString("PASSWORD").equals(pw)) {
					result = 1; // 비밀번호 일치
				} else {
					result = 0; // 비밀번호 불일치
				}
			} else {
				result = -1; // 비회원
			}
			System.out.println(result); // 여기까지는 문제 없었음.
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return result;
	}

	public void memberUpdate(MemberVO mVo) {
		String sql = "update member set password=?, name=?, phone=?, sms_yorn=?, zip=?, address1=?, address2=?, email=?, email_yorn=? where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getPassword());
			pstmt.setString(2, mVo.getName());
			pstmt.setString(3, mVo.getPhone());
			pstmt.setString(4, mVo.getSms_YorN());
			pstmt.setString(5, mVo.getZip());
			pstmt.setString(6, mVo.getAddress1());
			pstmt.setString(7, mVo.getAddress2());
			pstmt.setString(8, mVo.getEmail());
			pstmt.setString(9, mVo.getEmail_YorN());
			pstmt.setString(10, mVo.getId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public List<MemberVO> memberList() {
		MemberVO mVo = null;
		List<MemberVO> memberList = new ArrayList<MemberVO>();

		String sql = "SELECT * FROM MEMBER";

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				mVo = new MemberVO();
				mVo.setId(rs.getString("ID"));
				mVo.setPassword(rs.getString("PASSWORD"));
				mVo.setName(rs.getString("NAME"));
				mVo.setPhone(rs.getString("PHONE"));
				mVo.setSms_YorN(rs.getString("SMS_YORN"));
				mVo.setZip(rs.getString("ZIP"));
				mVo.setAddress1(rs.getString("ADDRESS1"));
				mVo.setAddress2(rs.getString("ADDRESS2"));
				mVo.setEmail(rs.getString("EMAIL"));
				mVo.setEmail_YorN(rs.getString("EMAIL_YORN"));
				mVo.setNickname(rs.getString("NICKNAME"));
				mVo.setMem_pic(rs.getString("MEM_PIC"));
				mVo.setShape(rs.getString("SHAPE"));
				mVo.setHeight(rs.getInt("HEIGHT"));
				mVo.setWeight(rs.getInt("WEIGHT"));
				mVo.setShoulder(rs.getInt("SHOULDER"));
				mVo.setBust(rs.getInt("BUST"));
				mVo.setArm_length(rs.getInt("ARM_LENGTH"));
				mVo.setArm_size(rs.getInt("ARM_SIZE"));
				mVo.setWaist(rs.getInt("WAIST"));
				mVo.setHip(rs.getInt("HIP"));
				mVo.setThigh(rs.getInt("THIGH"));
				mVo.setLeg_length(rs.getInt("LEG_LENGTH"));
				memberList.add(mVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return memberList;
	}

	public String findId(String Name, String Phone) {
		String id = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println(Name + Phone);
		try {
			conn = DBManager.getConnection();

			String sql = "select id from MEMBER where Name=? and Phone=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Name);
			pstmt.setString(2, Phone);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				id = rs.getString("id");
				System.out.println(id);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}

	public String findPwd(String Id, String Name, String Phone) {
		String password = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println(Name + Phone + Id);
		try {
			conn = DBManager.getConnection();
			System.out.println("연결됨");
			String sql = "select password from MEMBER where Id=? and Name=? and Phone=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Id);
			pstmt.setString(2, Name);
			pstmt.setString(3, Phone);

			rs = pstmt.executeQuery();
			System.out.println("rs에 담음");
			if (rs.next()) {
				password = rs.getString("password");
				System.out.println(password);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return password;
	}

	public void updateMemberSize(MemberVO mVo) {
		String sql = "update member set shape=?, height=?, weight=?, shoulder=?, bust=?, arm_length=?, arm_size=?, waist=?, hip=?, thigh=?, leg_length=? where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getShape());
			pstmt.setInt(2, mVo.getHeight());
			pstmt.setInt(3, mVo.getWeight());
			pstmt.setInt(4, mVo.getShoulder());
			pstmt.setInt(5, mVo.getBust());
			pstmt.setInt(6, mVo.getArm_length());
			pstmt.setInt(7, mVo.getArm_size());
			pstmt.setInt(8, mVo.getWaist());
			pstmt.setInt(9, mVo.getHip());
			pstmt.setInt(10, mVo.getThigh());
			pstmt.setInt(11, mVo.getLeg_length());
			pstmt.setString(12, mVo.getId());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void withdrawalMember(MemberVO mVo) {
		String sql = "delete member where id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}

/*
 * [회원 조회] □ ① 회원 전체보기 ■ SELECT * FROM MEMBER;
 * 
 * ② 한 명의 회원 정보 조회하기 ■ --> 주문할 때 승진씨 폼에서 쓰이려나? SELECT * FROM MEMBER WHERE ID=?
 * 
 * ③ 체형 계산 메쏘드에 갖다 쓰기 □ SELECT BUST, WAIST, HIP FROM MEMBER WHERE ID=?
 * 
 * 
 * [회원가입] ■ INSERT INTO MEMBER(ID, PASSWORD, NAME, PHONE, SMS_YorN, ZIP,
 * ADDRESS1, ADDRESS2, EMAIL, EMAIL_YorN) VALUES(?,?,?,?,?,?,?,?,?,?)
 * 
 * [회원정보 변경] □ ① 기본 정보 변경 ■ UPDATE MEMBER () ② 체형 측정시 ■ UPDATE MEMBER(HEIGHT,
 * WEIGHT, SHOULDER, BUST, ARM_LENGTH, ARM_SIZE, WAIST, HIP, THIGHT, LEG_LENGTH)
 * VALUES(?,?,?,?,?,?,?,?,?,?) UPDATE MEMBER(SHAPE) VALUES(?) ③ 프사, 닉네임 설정 시 □
 * UPDATE MEMBER(NICKNAME, MEM_PIC) VALUES(?,?)
 * 
 * [회원탈퇴] □ DELETE □
 * 
 * 
 */
