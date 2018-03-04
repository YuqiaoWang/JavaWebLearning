package bupt.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by yuqia on 2018/2/7.
 */
public class FirstAction extends ActionSupport{
    //定义用户名和密码
    private String username;
    private String password;
    //execute()方法，返回执行结果
    @Override
    public String execute() throws Exception {
        if(getRight()) {
            return "success";
        }else {
            return "error";
        }
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        System.out.println(username);
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        System.out.println(password);
        this.password = password;
    }

    public boolean getRight() {
        if(username.equals("JavaWeb")  && password.equals("123456")) {
            return true;
        }else {
            return false;
        }
    }
}
