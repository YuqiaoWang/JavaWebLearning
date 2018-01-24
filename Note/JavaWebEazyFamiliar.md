
# JavaWeb 入门很简单
## 1. JavaWeb 基础知识
### 1.1 如何学习 Java Web 开发
#### (1). Java语言
#### (2). JDBC
执行SQL语句的 Java API
#### (3). Servlet
运行在服务器端的程序，Servlet 从客户端（通过Web服务器）接收请求
#### (4). JSP(Java Server Pages)技术
从Servlet基础上分离的一小部分，主要用在交互网页的开发，运用Java语法
#### (5) JavaBean(Application)
Java Application的一部分

### 1.2 Java Web 运行原理
静态网站资源（如HTML页面）：浏览的数据始终不变  
动态网站资源：浏览的数据由程序产生，不同时间访问web页面看到内容不同  
**工作原理**：
- (1)浏览器和Web服务器建立连接（浏览器与服务器的一个TCP Socket 套接字连接）
- (2)浏览器发送HTT请求，请求包含：
    - 请求行：一个ASCII文本，由请求的HTTP方法、请求的URL和HTTP版本组成
    - 请求头
    - 空行
    - 消息体：HTTP请求中带有查询字符串时，如果是GET方法，查询字符串或表单数据附加在请求行中，消息体没有内容；如果是POST方法，查询字符串或表单数据就添加在消息体中
- (3)服务器端接收客户端的HTTP请求，生成HTTP响应回发，响应包含：
    - 状态行：每个HTTP响应以一个状态行开头，它由HTTP协议版本、响应状态码和响应描述组成
    - 响应头：前面是HTTP头的名称，后面是HTTP头的值
    - 空行
    - 消息体：要发送回客户端的HTML稳定或其他要显示的内容
- (4)服务器端关闭连接，客户端解析并回发响应，恢复页面。HTTP 响应到达客户端后，浏览器先解析HTTP响应中的状态行，查看请求是否成功的状态码，然后开始下一步解析响应

### 1.3 Java Web 应用程序组成
Java Web 应用程序组成包括3种：
- 配置文件(web.xml)
- 静态文件和 JSP
- 类文件和包

说明：
- 网页可放在Web应用程序根目录下，根据动态页面或静态页面放在不同目录下
- 图像一般会放在images子目录中
- Servlet 类和 JavaBean 类，编译为Class文件后放在WEB-INF/classes目录中
- lib 目录用来包含应用程序需要的jar包
- 标记描述放在 WEB_INF 目录下
- Applet 程序放在应用目录下
- WEB-INF 目录下存放 web.xml部署描述文件器

## 2. HTML + CSS + JavaScript + JSP
### 2.1 HTML
#### 2.1.1 HTML 文档结构
````
<html> 
    <head>
        <title><\title>
    <\head>
    <body>
        HTML正文
    <\body>
<\html>
````

#### 2.1.1 HTML 元素属性
##### <1>. \<meta> 标签
\<meta>标签用于网页的\<head>与\<\head>中，属性有2种：name和http-equiv  
**name 属性**  
用于描述网页，对应于content，其中最重要的是description 和 keywords
````
<meta name="KeyWords" content="Java Web">
<meta name="Description" content="Java Web">
````
**http-equiv属性**  
用于回应给浏览器的有用信息，以帮助正确和精确地显示网页内容  
常用http-equiv类型：(1)Content-Type 和 Content-Language (2)Refresh (3) Expires(期限) (4) Pragma(catch模式) (5) Set-Cookie (6) Window-target (7) Content-Script-Type (8) Page-Enter 、 Page-Exit

##### <2>. \<body>标签
- bgcolor HTML文档背景颜色
- background 背景图片
- bgproperties=fixed 使背景图片成水印效果
- text 正文字体颜色
- 超链接颜色
- leftmargin 和 topmargin 

##### <3>. HTML界面元素
- \<html><\html> 创建HTML文档
- \<head><\head> 设置文档标题及不再页面中显示的信息
- \<title><\title>文档标题
- \<hl><\hl>最大标题
- \<pre><\pre>预先格式化文本
- \<u><\u> 下划线
- \<b><\b> 黑体
- \<i><\i> 斜体
- \<cite><\cite> 引用
- \<em><\em> 强调文本
- \<font size = "" color = ""><\font> 字体大小、颜色

##### <5>.HTML 段落元素
- \<p><\p> 创建段落
- \<p align=""> 左中右对齐
- \<br><\br> 定义行
- \<dl><\dl> 定义列表
- \<ol><\ol> 创建数字列表
- \<ul><\ul> 创建圆点列表
- \<li> 放在每个列表项之前

##### <6>. HTML 链接元素
- \<a href="URL"><\a> 创建超文本链接
- \<a name=""><\a> 创建位于文档内部的书签
- \<a href="#name"><\a> 创建指向位于文档内部书签的链接

### 2.2 DIV + CSS
CSS(Cascading Style Sheets) 用于控制网页样式并将样式信息与网页内容分离的标记语言

#### 2.2.2 Web 标准的构成和布局
Web构成的三个要素： 表现、结构 和 行为
- 表现： 用于对已经被结构化的信息进行显示上的修饰，包括版式、颜色、大小，主要技术就是CSS
- 结构：用来对网页中信息进行整理与分类，常用技术：HTML、XHTML和XML
- 行为：对整个文档内部的一个模型进行定义及交互行为的编写。主要技术有： DOM、JavaScript和Ajax等

DIV + CSS 布局示意图
![](fig_3.1.png)

#### 2.2.3 CSS 语法基础
（暂略）


### 2.3 JavaScript
介于Java 与 HTML 之间的一种基于对象和事件驱动并具有安全性能的脚本语言  
"事件驱动" 值在主页中执行了魔种某种操作所产生的动作，如：点按鼠标、移动窗口、选择菜单  
#### 2.3.1 执行原理
- (1).客户端请求某个网页
- (2). Web服务器响应请求。Web服务器找到请求页面，并将整个页面包含JavaScript的脚本代码作为响应内容，发送回客户端机器
- (3)客户端浏览器解释并执行带脚本的代码。浏览器打开回应的网页文件内容，脚本从服务器端下载到客户端。客户端分担了服务器的任务，减轻服务器压力

#### 2.3.2 常用函数
(1)常规函数
- alert:显示告警对话框，包括确定按钮
- confirm:显示对话框，包括确定和取消按钮
- escape:字符转换成Unicode码
- eval：计算表达式结果
- isNaN:测试true false 不是一个数字
- parseFloat: 将字符串转换为浮点数字
- paseInt:转整型
- unescape:解码
- prompt:显示输入对话框，提示等待用户输入