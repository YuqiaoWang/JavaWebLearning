package bupt.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

/**
 * Created by yuqia on 2018/2/6.
 */
public class User {
    private int id;
    private String username;
    private String password;
    private String phone;
    private String addr;
    private Date rdate;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public Date getRdate() {
        return rdate;
    }

    public void setRdate(Date rdate) {
        this.rdate = rdate;
    }

    public int getId() {

        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public static boolean check(String username, String password) throws Exception{
        User u = null;
        //获取数据库连接
        Connection conn = DB.getConn();
        String sql = "select * from user where username = '" + username + "'" +
                "and password='" + password + "'";
        //获取连接状态
        Statement stmt = DB.getStatement(conn);
        //根据sql语句获取查询结果
        ResultSet rs = DB.getResultSet(stmt, sql);
        try {
            if(!rs.next()) {
                throw new Exception("用户不存在:" + username);
            }else {
                if(!password.equals(rs.getString("password"))) {
                    throw new Exception("密码不正确！");
                }
                //将获取的永固信息保存到JavaBean容器中
                u = new User();
                u.setId(rs.getInt("id"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setPhone(rs.getString("phone"));
                u.setAddr(rs.getString("addr"));
                u.setRdate(rs.getTimestamp("rdate"));
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DB.close(rs);
            DB.close(stmt);
            DB.close(conn);
        }
        return true;
    }

}
