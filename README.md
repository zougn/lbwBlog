# 博客介绍
<p align=center>
  <a href="https://blog.zougn.com">
    <img src="https://zougn.oss-cn-shanghai.aliyuncs.com/photos/255fff56ab5a4f2e366b5c04a84e45de.png" alt="小而美的个人博客" style="border-radius: 50%">
  </a>
</p>



<p align=center>
   小而美的个人博客(Spring Boot + JPA + thymeleaf) 李仁密原版
</p>
<p align="center">
   <a target="_blank" href="https://github.com/zougn/lbwBlog">
         <img src="https://badgen.net/static/license/GPL-3.0/blue/"/>
      <img src="https://img.shields.io/badge/JDK-11-green.svg"/>
      <img src="https://img.shields.io/badge/springboot-2.5.5-green"/>
      <img src="https://img.shields.io/badge/mysql-8.0.23-green"/>
      <img src="https://img.shields.io/badge/JPA-green"/>
   </a>
</p>


[项目链接](#项目链接) |[技术组合](#技术组合) | [工具与环境](#工具与环境) | [功能规划](#功能规划) |[目录结构](#目录结构)  | [页面设计与开发](#页面设计与开发) | [插件集成](#插件集成) | [快速开始](#快速开始) |[项目总结](#项目总结) 



<center><b>项目跟着b站李仁密老师的Spring Boot开发小而美的个人博客教程从头到尾完整学习。</b></center>

<center><b>和原版基本一致，是大学中第一次使用springboot框架独立完成一个项目，收获颇丰！</b></center>



# 项目链接:

**Github地址：** [https://github.com/zougn/lbwBlog](https://github.com/zougn/lbwBlog)

**Gitee地址：** [https://gitee.com/zougn/lbwBlog](https://gitee.com/zougn/lbwBlog)

您的star是我坚持的动力，感谢大家的支持，欢迎大家一起讨论技术共同学习。

# 技术组合:

*  后端：Spring Boot + JPA
*  前端：[Semantic UI框架](https://semantic-ui.com/) + thymeleaf模板
*  数据库：MySQL



# 工具与环境：

| 开发工具                                                     | 说明              |
| :----------------------------------------------------------- | ----------------- |
| [IDEA 2023.1.3](https://www.jetbrains.com/idea/)             | Java开发工具IDE   |
| [VSCode 1.80](https://code.visualstudio.com/download)        | Vue开发工具IDE    |
| [Navicat Prenium 16](https://www.navicat.com.cn/download/navicat-premium) | MySQL远程连接工具 |



| 开发环境                                                     | 版本   |
| ------------------------------------------------------------ | ------ |
| [JDK](https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/downloads-list.html) | 11     |
| [MySQL](https://dev.mysql.com/downloads/mysql/)              | 8.0.33 |
| [Maven](https://maven.apache.org/download.cgi)               | 3.9.3  |



# 功能规划：

![](https://zougn.oss-cn-shanghai.aliyuncs.com/photos/05dea6e169a09e84daf9aa132decdb31.png?raw=true)



# 目录结构：

```
lbwblog
├── aspect        --  aop模块（日志处理）
├── dao           --  数据层
├── handler       --  处理器模块（全局异常处理）
├── interceptor   --  拦截器模块（登录，跨域配置）
├── po            --  po模块
├── service       --  服务模块
├── util          --  工具类模块
├── vo            --  vo模块
└── web           --  控制器模块
```



# 页面设计与开发

### 前台展示：

**首页**

![](https://zougn.oss-cn-shanghai.aliyuncs.com/photos/addf8fc773a5ba2ac4237584fb76bf97.png?raw=true)

**详情页**

![](https://zougn.oss-cn-shanghai.aliyuncs.com/photos/2bd74c5a71d16393072f587a373b8bff.png?raw=true)

**分类**

![](https://zougn.oss-cn-shanghai.aliyuncs.com/photos/5ebc1282d49ce3c712a8cbae9e377cc6.png?raw=true)

**标签**

![](https://zougn.oss-cn-shanghai.aliyuncs.com/photos/96626cab262fde0113fb32df2996eb39.png?raw=true)

**归档**

![](https://zougn.oss-cn-shanghai.aliyuncs.com/photos/8afb17ba0a79ba7c6db4ebb6d92125be.png?raw=true)

**关于我**

![](https://zougn.oss-cn-shanghai.aliyuncs.com/photos/7b0c154e0496d95d1dfcd0de9771743f.png?raw=true)



### 后台展示：

**文章列表**

![](https://zougn.oss-cn-shanghai.aliyuncs.com/photos/3ac071d5f7bd3c791fd5dee0da655cba.png?raw=true)

**编辑页**

![](https://zougn.oss-cn-shanghai.aliyuncs.com/photos/7b65fabc147e95ae6f7edba862367ded.png?raw=true)



# 插件集成

[编辑器 Markdown](https://pandao.github.io/editor.md/)

[Markdown 转换 HTML](https://github.com/atlassian/commonmark-java)

[内容排版 typo.css](https://github.com/sofish/typo.css)

[动画 animate.css](https://daneden.github.io/animate.css/)

[代码高亮 prism](https://github.com/PrismJS/prism)

[目录生成 Tocbot](https://tscanlin.github.io/tocbot/)

[滚动侦测 waypoints](http://imakewebthings.com/waypoints/)

[平滑滚动 jquery.scrollTo](https://github.com/flesler/jquery.scrollTo)

[二维码生成 qrcode.js](https://davidshimjs.github.io/qrcodejs/)

## 快速开始

- 拉下代码，修改maven、jdk、yml(mysql密码)配置
- 创建lbwblog数据库，将lbwblog.sql导入数据库执行
- 运行项目，在浏览器打开：[localhost:8080](https://localhost:8080)
- 后台页面：[localhost:8080/admin](https://localhost:8080/admin)  用户名:lbw  密码:123456

# 项目总结

作为新手入门的一个博客项目是相当不错的，项目所用的技术栈都比较基础，非常适合初学者。在学习的过程中能对后端框架和web前端开发有比较基本的了解，有利于后面的深入学习。

