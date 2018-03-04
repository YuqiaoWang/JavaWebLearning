package bupt.pojo;

import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;

/**
 * Created by yuqia on 2018/2/9.
 */
public class LogPrint implements MethodBeforeAdvice {
    public void before(Method arg0, Object[] arg1, Object arg2) throws Throwable{
        System.out.println("Speaker called!");
    }
}
