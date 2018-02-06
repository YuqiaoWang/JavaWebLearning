import java.io.Serializable;

/**
 * Created by yuqia on 2018/1/31.
 */
public class Email implements Serializable{
    private static final long serialVersionUID = 1L;
    private String mailAddr;
    private boolean email;

    public Email() {

    }

    public Email(String addr) {
        this.mailAddr = addr;
    }

    public boolean isEmail() {
        String regex = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)+([-.]\\w+)*";
        if(mailAddr.matches(regex)) {
            email = true;
        }
        return email;
    }

    public String getMailAddr() {
        return mailAddr;
    }

    public void setMailAddr(String addr) {
        this.mailAddr = addr;
    }
}
