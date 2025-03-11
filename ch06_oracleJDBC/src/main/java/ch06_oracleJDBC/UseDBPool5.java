package ch06_oracleJDBC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class UseDBPool5 {

    private DBConnectionMgr pool;

    public UseDBPool5() {  // 기본 생성자 추가
        pool = DBConnectionMgr.getInstance();
    }

    public ArrayList<Bean> getList() {
        ArrayList<Bean> alist = new ArrayList<>();
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;

        try {
            con = pool.getConnection();
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM department");

            while (rs.next()) {
                Bean bean = new Bean();
                bean.setDept_id(rs.getString(1));
                bean.setDept_title(rs.getString(2));
                bean.setLocation_id(rs.getString(3));
                alist.add(bean);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            pool.freeConnection(con);
        }
        return alist;
    }
}
