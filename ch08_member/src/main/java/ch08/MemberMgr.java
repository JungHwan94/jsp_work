package ch08;

import java.sql.*;

public class MemberMgr {
	private DBConnectionMgr pool;
	
	public MemberMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	public boolean insertMember(MemberBean member) {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean success = false;
		
		try {
			con = pool.getConnection();
			String sql = "INSERT INTO member (id, pwd, name, gender, birthday, email, zipcode, address, detailAddress, hobby, job) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPwd());
            pstmt.setString(3, member.getName());
            pstmt.setString(4, member.getGender());
            pstmt.setString(5, member.getBirthday());
            pstmt.setString(6, member.getEmail());
            pstmt.setString(7, member.getZipcode());
            pstmt.setString(8, member.getAddress());
            pstmt.setString(9, member.getDetailAddress());
            pstmt.setString(10, member.getHobby());
            pstmt.setString(11, member.getJob());
		
            int count = pstmt.executeUpdate(); // 실행 후 삽입된 행의 개수 반환
            if (count > 0) {
                success = true; // 회원가입 성공
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return success;
	}
	
	public boolean loginMember(String id, String pwd) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean isValid = false;

        try {
            con = pool.getConnection();
            String sql = "SELECT id FROM member WHERE id=? AND pwd=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);
            rs = pstmt.executeQuery();

            if (rs.next() && rs.getInt(1) > 0) {
                isValid = true; // 로그인 성공
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return isValid;
    }
}