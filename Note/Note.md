# 开发笔记

## 1.Spring
### 1.1 Spring框架模块
- core
- context
- dao
- orm
- aop
- web
- web mvc
### 1.2 spring工程结构
````
-src\
    -main\
        -java\
            -controllers\
            -dao\
            -mapper\
                -User.xml
                -UserMapper.java
            -pojo\
                -User.java
            -service\
        -resources\
            -applicationContext.xml
            -log4j.properties
            -springMVC.xml
        -webapp\
            -jsp\
                -xxx.jsp
            -web.xml
````

#### 1.2.1 配置文件
1. web.xml
    - sevlet（DispatcherServlet） 与 servlet对应的mapping
        - \<servlet-mapping>标记指示哪些URL将由DispatcherServlet处理

2. applicationContext.xml 中声明所有可用的bean
    - 普通java类(业务对象)
    - DAO
    - ORM的dataSource (mybatis 还要写 sqlSession)
    > 测试bean加载时可用
    > ````
    > ApplicationContext context = new        ClassPathXmlApplicationContext("applicationContext.xml");
    > Helloworld obj = (Helloworld) context.getBean("helloBean");
    > ````

3. springMVC.xml 中声明与mvc相关的bean
    - \<context：component-scan ...>标签将用于激活Spring MVC注释扫描功能，允许使用@Controller和@RequestMapping等注释
    - InternalResourceViewResolver将定义用于解析视图名称的规则

4. log.properties 声明log配置

#### 1.2.2 工程中各目录文件说明
1. controllers/xxxController.java MVC的控制器  
    > 需要实现 handleRequestInternal方法  
    > 新建的mav实例的name一般即为要返回的jsp的名称
    > 而addObject的第一个参数为bean name，可在jsp中拿到对象
    > ````
    > ModelAndView mav = new ModelAndView("hello");
    > mav.addObject("message", "Hello World!");
    > ````
    > 也可在一个controller中处理多个动作，即在单个控制器中分别映射多个URL到对应的方法

2. dao/xxxDAO.java 数据库访问对象，是一个interface，里面声明了CRUD等方法,该对象和数据库中的表相关
    > 使用jdbc以及封装了jdbc的orm（如mybatis、jade）都需要配置dataSource  
    > jade中使用注解将dao接口方法实例化; mybatis用mapper和xxx.xml实现dao接口方法实例化  
    > 同时，mybatis需要在applicationContext.xml中写sqlSession的bean，以让mapper中的sql语句生效

3. service/

### 1.3 spring中的机制
#### 1.3.1 bean自动装配
##### 1.3.1.1 配置文件方式
可以用 auto-wiring 功能会自动装配Bean。要启用它，只需要在 \<bean>定义“autowire”属性。共5种：
- no: 缺省情况下，自动配置是通过“ref”属性手动设定
- byName: 根据属性名称自动装配
- byType: 按数据类型自动装配
- constructor: 在构造函数参数的byType方式
- autodetect: 如果找到默认的构造函数，使用“自动装配用构造”; 否则，使用“按类型自动装配”
##### 1.3.1.2 注解方式
@Autowired注解是通过匹配数据类型自动装配Bean，可在 setter方法，构造函数，字段上使用
> 需要在applicationContext.xml中添加<context:annotation-config />

@Qualifier Bean有资格自动装配上到一个字段，可用于两个同类型实例在beans中声明时，应装配哪个

#### 1.3.2 依赖注入方式
- setter注入
- 构造器注入

#### 1.3.3 bean的作用域
- 单例 - 每个Spring IoC 容器返回一个bean实例
- 原型- 当每次请求时返回一个新的bean实例
- 请求 - 返回每个HTTP请求的一个Bean实例
- 会话 - 返回每个HTTP会话的一个bean实例
- 全局会话- 返回全局HTTP会话的一个bean实例
> Spring 的核心作用域 - 单例和原型，默认作用域是单例

#### 1.3.4 自动扫描组件
@Component注释来表示这是类是一个自动扫描组件
> 需要写在 application.xml里找bean，和写在springMVC.xml里找controller
````
<context:component-scan base-package="org.xiaomi.sample" />
<context:component-scan base-package="org.xiaomi.sample.controllers" />
````

将这个“context:component”在bean配置文件，这意味着，在 Spring 中启用自动扫描功能。base-package 是指明存储组件，Spring将扫描该文件夹，并找出Bean(注解为@Component)并注册到 Spring 容器。

#### 1.3.5 SpringMVC 工作流程
![](spring_mvc.png)

## 2. APUS
对thrift二次封装的RPC
