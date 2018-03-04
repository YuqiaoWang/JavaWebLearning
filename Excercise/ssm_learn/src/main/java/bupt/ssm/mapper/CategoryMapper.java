package bupt.ssm.mapper;

import bupt.ssm.pojo.Category;

import java.util.List;

/**
 * Created by yuqia on 2018/2/11.
 */
public interface CategoryMapper {
    public int add(Category category);


    public void delete(int id);


    public Category get(int id);


    public int update(Category category);


    public List<Category> list();


    public int count();
}
