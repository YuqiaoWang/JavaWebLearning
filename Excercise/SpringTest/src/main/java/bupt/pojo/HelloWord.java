package bupt.pojo;

/**
 * Created by yuqia on 2018/2/9.
 */
public class HelloWord {
    private Speaker speaker;
    public void setSpeaker(Speaker speaker) {
        this.speaker = speaker;
    }
    public void greet() {
        speaker.sayHello();
    }
}
