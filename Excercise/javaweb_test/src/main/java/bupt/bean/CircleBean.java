package bupt.bean;

/**
 * Created by yuqia on 2018/2/5.
 */
public class CircleBean {
    private int radius = 1;

    public CircleBean() {

    }

    public int getRadius() {
        return radius;
    }

    public void setRadius(int radius) {
        this.radius = radius;
    }

    public double circleLength() {
        return Math.PI * radius * 2.0;
    }

    public double circleArea() {
        return Math.PI * radius * radius;
    }
}
