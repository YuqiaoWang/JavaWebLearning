package bupt.pojo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by yuqia on 2018/2/9.
 */
public class Test {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        HelloWord helloWord = (HelloWord) context.getBean("helloWorld");
        helloWord.greet();
    }
}
