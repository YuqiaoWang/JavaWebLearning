package com.how2java.test;

import com.how2java.Mapper.CategoryMapper;
import com.how2java.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.junit.Test;
import org.junit.runner.RunWith;
import java.util.List;

/**
 * Created by yuqia on 2018/2/14.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class MybatisTest {
    @Autowired
    private CategoryMapper categoryMapper;
    @Test
    public void testAdd() {
        Category category = new Category();
        category.setName("new Category");
        categoryMapper.add(category);
    }
    @Test
    public void testList() {
        System.out.println(categoryMapper);
        List<Category> cs=categoryMapper.list();
        for (Category c : cs) {
            System.out.println(c.getName());
        }
    }



}
