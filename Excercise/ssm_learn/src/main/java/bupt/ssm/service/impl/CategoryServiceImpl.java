package bupt.ssm.service.impl;

import bupt.ssm.mapper.CategoryMapper;
import bupt.ssm.pojo.Category;
import bupt.ssm.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yuqia on 2018/2/11.
 */
@Service
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    CategoryMapper categoryMapper;

    public List<Category> list() {
        return categoryMapper.list();
    }
}
