package com.how2java.Mapper;

import com.how2java.pojo.Category;

import java.util.List;

/**
 * Created by yuqia on 2018/2/14.
 */
public interface CategoryMapper {
    int add(Category category);

    void delete(int id);

    Category get(int id);

    int update(Category category);

    List<Category> list();

    int count();
}
