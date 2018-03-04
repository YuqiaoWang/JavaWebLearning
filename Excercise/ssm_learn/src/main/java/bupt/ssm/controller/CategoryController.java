package bupt.ssm.controller;

import bupt.ssm.pojo.Category;
import bupt.ssm.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by yuqia on 2018/2/11.
 */
//告诉Spring MVC 这是一个控制器类
@Controller
@RequestMapping("")
public class CategoryController {
    @Autowired
    CategoryService categoryService;

    @RequestMapping("listCategory")
    public ModelAndView listCategory() {
        ModelAndView mav = new ModelAndView();
        List<Category> cs = categoryService.list();

        //放入转发参数
        mav.addObject("cs", cs);
        //放入jsp路径
        mav.setViewName("listCategory");
        return mav;
    }
}
