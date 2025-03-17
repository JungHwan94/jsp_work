package ajax01;

import java.sql.*;
import java.util.ArrayList;

public class MemberDao {
	DBConnectionMgr pool = DBConnectionMgr.getInstance();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public boolean loginMember(String id, String pwd) {
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select id from member where id=? and pwd=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			flag = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public boolean chickId(String id) {
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select id from member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			flag = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public boolean insertMember(Member mbean) {
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPwd());
			pstmt.setString(3, mbean.getName());
			pstmt.setString(4, mbean.getGender());
			pstmt.setString(5, mbean.getBirthday());
			pstmt.setString(6, mbean.getEmail());
			pstmt.setString(7, mbean.getZipcode());
			pstmt.setString(8, mbean.getAddress());
			pstmt.setString(9, mbean.getDetail_address());
			pstmt.setString(10, String.join(" ", mbean.getHobby()));
			pstmt.setString(11, mbean.getJob());
			
			if(pstmt.executeUpdate() == 1)  // executeUpdate() : update가 잘 되었으면 1반환, 안됐으면 0반환
				flag = true;	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public Member getMember(String id) {
		Member member = null;
        try {
            con = pool.getConnection();
            sql = "SELECT id, name, gender, email FROM member WHERE id = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                member = new Member();
                member.setId(rs.getString("id"));
                member.setName(rs.getString("name"));
                member.setGender(rs.getString("gender"));
                member.setEmail(rs.getString("email"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        return member;
    }
	
	public ArrayList<Member> getAllMember() {
		ArrayList<Member> members = new ArrayList<>();
        try {
            con = pool.getConnection();
            sql = "SELECT id, name, gender, email FROM member";
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                Member member = new Member();
                member.setId(rs.getString("id"));
                member.setName(rs.getString("name"));
                member.setGender(rs.getString("gender"));
                member.setEmail(rs.getString("email"));
                members.add(member);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        return members;
    }

    private void closeResources() {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (con != null) pool.freeConnection(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}