/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : lbwblog

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 12/07/2023 21:43:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `first_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `views` int NULL DEFAULT NULL,
  `appreciation` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `update_time` datetime(6) NULL DEFAULT NULL,
  `type_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK292449gwg5yf7ocdlmswv9w4j`(`type_id` ASC) USING BTREE,
  INDEX `FK8ky5rrsxh01nkhctmo7d48p82`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (1, 'maven中静态资源的过滤', '<h1 id=\"maven中静态资源的过滤\">maven中静态资源的过滤</h1>\n<p>pom.xml文件中加入下面配置</p>\n<h3 id=\"可以过滤java和resources文件夹里面所有的的properties和xml文件\">可以过滤java和resources文件夹里面所有的的.properties和.xml文件</h3>\n<p><strong>directory：指定资源所在的目录，目录的路径是相对于pom.xml文件的\nincludes：指定要包含哪些文件</strong>\n<strong>filtering标签中：false表示不过滤，true表示过滤</strong></p>\n<pre><code class=\"language-java\">    &lt;build&gt;\n        &lt;resources&gt;\n            &lt;resource&gt;\n                &lt;directory&gt;src/main/java&lt;/directory&gt;\n                &lt;includes&gt;\n                    &lt;include&gt;**/*.properties&lt;/include&gt;\n                    &lt;include&gt;**/*.xml&lt;/include&gt;\n                &lt;/includes&gt;\n                &lt;filtering&gt;false&lt;/filtering&gt;\n            &lt;/resource&gt;\n            &lt;resource&gt;\n                &lt;directory&gt;src/main/resources&lt;/directory&gt;\n                &lt;includes&gt;\n                    &lt;include&gt;**/*.properties&lt;/include&gt;\n                    &lt;include&gt;**/*.xml&lt;/include&gt;\n                &lt;/includes&gt;\n                &lt;filtering&gt;false&lt;/filtering&gt;\n            &lt;/resource&gt;\n        &lt;/resources&gt;\n    &lt;/build&gt;\n</code></pre>\n', 'https://images.pexels.com/photos/17539754/pexels-photo-17539754.jpeg', '原创', 4, b'1', b'1', b'1', b'1', b'1', '2020-03-12 08:25:47.000000', '2023-07-12 20:21:51.000000', 3, 2, 'pom.xml文件中加入下面配置\r\n可以过滤java和resources文件夹里面所有的的.properties和.xml文件');
INSERT INTO `t_blog` VALUES (2, '使用System.out.format()格式化输出', '#### JDK5.0允许java像C语言那样直接用printf()方法来格式化输出\r\n####  System.out.format()功能与printf()一样，可以使用%d,%f等参数。\r\n使用System.out.format()完成**左对齐，补0，千位分隔符，小数点位数，本地化表达**\r\n```java\r\npublic class TestNumber {\r\n   \r\n    public static void main(String[] args) {\r\n        int year = 2020;\r\n        //左对齐，补0，千位分隔符，小数点位数，本地化表达\r\n        \r\n      //直接打印数字\r\n        System.out.println(year);\r\n          \r\n        //直接打印数字\r\n        System.out.format(\"%d%n\",year);\r\n        //总长度是8,默认右对齐\r\n        System.out.format(\"%8d%n\",year);\r\n        //总长度是8,左对齐\r\n        System.out.format(\"%-8d%n\",year);\r\n        //总长度是8,不够补0\r\n        System.out.format(\"%08d%n\",year);\r\n        //千位分隔符\r\n        System.out.format(\"%,8d%n\",year*10000);\r\n  \r\n        //保留5位小数\r\n        System.out.format(\"%.5f%n\",Math.PI);\r\n          \r\n        //不同国家的千位分隔符\r\n        System.out.format(Locale.FRANCE,\"%,.2f%n\",Math.PI*10000);\r\n        System.out.format(Locale.US,\"%,.2f%n\",Math.PI*10000);\r\n        System.out.format(Locale.UK,\"%,.2f%n\",Math.PI*10000);\r\n          \r\n    }\r\n}\r\n```\r\n输出结果：\r\n\r\n```java\r\n2020\r\n2020\r\n    2020\r\n2020    \r\n00002020\r\n20,200,000\r\n3.14159\r\n31?415,93\r\n31,415.93\r\n31,415.93\r\n```\r\n', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584368822685&di=19855856bbd158b52926a49b51e876c0&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Fcrop.0.4.1280.711%2F70745653ly1fvuflwe10zj20zk0k0n06.jpg', '原创', 0, b'1', b'1', b'1', b'1', b'1', '2019-03-12 13:42:14.000000', '2019-03-13 12:00:08.000000', 6, 1, 'JDK5.0允许java像C语言那样直接用printf()方法来格式化输出\r\nSystem.out.format()功能与printf()一样，可以使用%d,%f等参数。\r\n\r\n使用System.out.format()完成左对齐，补0，千位分隔符，小数点位数，本地化表达');
INSERT INTO `t_blog` VALUES (3, 'Springboot中PageHelper 分页查询使用方法', '### 一：导入依赖\r\n\r\n```java\r\n<dependency>\r\n	<groupId>com.github.pagehelper</groupId>\r\n	<artifactId>pagehelper-spring-boot-starter</artifactId>\r\n	<version>1.2.13</version>\r\n</dependency>\r\n```\r\n### 二：配置yml文件中PageHelper的属性\r\n\r\n```java\r\npagehelper:                #分页插件\r\n  helper-dialect: mysql\r\n  reasonable: true\r\n  support-methods-arguments: true\r\n  params:\r\n```\r\n### 三：在controller类中使用，\r\n##### 1.在查询方法上调用PageHelper.startPage()方法，设置分页的页数和每页信息数，\r\n##### 2.将查询出来的结果集用PageInfo的构造函数初始化为一个分页结果对象\r\n##### 3.将分页结果对象存入model，返回前端页面\r\n```java\r\n@GetMapping(\"/types\")\r\npublic String types(@RequestParam(required = false,defaultValue = \"1\",value = \"pagenum\")int pagenum, Model model){\r\n\r\n    PageHelper.startPage(pagenum, 5);  //pagenum：页数，pagesize:每页的信息数\r\n    \r\n    List<Type> allType = typeService.getAllType(); //调用业务层查询方法\r\n    \r\n    PageInfo<Type> pageInfo = new PageInfo<>(allType); //得到分页结果对象\r\n    \r\n    model.addAttribute(\"pageInfo\", pageInfo);  //携带分页结果信息\r\n    \r\n    return \"admin/types\";  //回到前端展示页面\r\n}\r\n```\r\n### 四：前端展示分页（thymeleaf+semantic-ui）,这里ui用自己的就行，比如bootstrap或layui，主要是thymeleaf的使用。\r\n\r\n```java\r\n<table  class=\"ui compact celled teal table\">\r\n  <thead>\r\n  <tr>\r\n    <th></th>\r\n    <th>名称</th>\r\n    <th>操作</th>\r\n  </tr>\r\n  </thead>\r\n  <tbody>\r\n  <tr th:each=\"type, iterStat : ${pageInfo.list}\">\r\n    <td th:text=\"${iterStat.count}\">1</td>\r\n    <td th:text=\"${type.name}\">摸鱼方法</td>\r\n    <td>\r\n      <a href=\"#\" th:href=\"@{/admin/types/{id}/input(id=${type.id})}\" class=\"ui mini teal basic button\">编辑</a>\r\n      <a href=\"#\" th:href=\"@{/admin/types/{id}/delete(id=${type.id})}\" class=\"ui mini red basic button\">删除</a>\r\n    </td>\r\n  </tr>\r\n  </tbody>\r\n  <tfoot>\r\n  <tr>\r\n    <th colspan=\"7\">\r\n      <div class=\"ui mini pagination menu\"  >\r\n        <div class=\"item\"><a th:href=\"@{/admin/types}\">首页</a></div>\r\n        <div class=\"item\"><a th:href=\"@{/admin/types(pagenum=${pageInfo.hasPreviousPage}?${pageInfo.prePage}:1)}\">上一页</a></div>\r\n        <div class=\"item\"><a th:href=\"@{/admin/types(pagenum=${pageInfo.hasNextPage}?${pageInfo.nextPage}:${pageInfo.pages})}\">下一页</a></div>\r\n        <div class=\"item\"><a th:href=\"@{/admin/types(pagenum=${pageInfo.pages})}\">尾页</a></div>\r\n      </div>\r\n      <a href=\"#\" th:href=\"@{/admin/types/input}\" class=\"ui mini right floated teal basic button\">新增</a>\r\n    </th>\r\n  </tr>\r\n  </tfoot>\r\n</table>\r\n\r\n<div class=\"ui segment m-inline-block\">\r\n  <p >当前第<span th:text=\"${pageInfo.pageNum}\"></span>页，总<span th:text=\"${pageInfo.pages}\"></span>页，共<span th:text=\"${pageInfo.total}\"></span>条记录</p>\r\n</div>\r\n```\r\n### 五：效果展示（pagesize设置为5的效果）\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20200310105006168.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQyODA0NzM2,size_16,color_FFFFFF,t_70)\r\n', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584368536828&di=460fea188bd56a9f691d87e56622b891&imgtype=0&src=http%3A%2F%2Ftc.sinaimg.cn%2Fmaxwidth.800%2Ftc.service.weibo.com%2Fp3_pstatp_com%2F5ffc4f5b05b15c5642dd59cc7341cc71.jpg', '原创', 0, b'1', b'0', b'1', b'1', b'1', '2019-03-14 17:05:58.000000', '2020-03-21 11:45:10.000000', 1, 1, '1.在查询方法上调用PageHelper.startPage()方法，设置分页的页数和每页信息数，\r\n2.将查询出来的结果集用PageInfo的构造函数初始化为一个分页结果对象\r\n3.将分页结果对象存入model，返回前端页面');
INSERT INTO `t_blog` VALUES (4, 'thymeleaf语法及使用', '## 模板引擎\r\n\r\n简介：模板引擎(这里特指用于Web开发的模板引擎)是为了使用户界面与业务数据(内容)分离而产生的,它可以生成特定格式的文档，用于网站的模板引擎就会生成一个标准的HTML文档。\r\n模板引擎的思想：\r\n![在这里插入图片描述](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9pbWFnZXMuY25ibG9ncy5jb20vY25ibG9nc19jb20venltMTk5OS8xNjQ1NDE2L29fMjAwMjExMDk1OTQxMTQucG5n?x-oss-process=image/format,png)\r\nThymeleaf就是SpringBoot给我们推荐的一种模板引擎！\r\n\r\n## Thymeleaf模板引擎\r\n\r\n#### 1.使用Thymeleaf之前的步骤\r\n\r\n 1. Thymeleaf 官网：https://www.thymeleaf.org/\r\n 2. springboot项目直接引入依赖：\r\n```java\r\n<dependency>\r\n   <groupId>org.springframework.boot</groupId>\r\n   <artifactId>spring-boot-starter-thymeleaf</artifactId>\r\n</dependency>\r\n```\r\n3.非springboot项目直接引入依赖：\r\n\r\n```java\r\n<dependency>\r\n    <groupId>org.thymeleaf</groupId>\r\n    <artifactId>thymeleaf</artifactId>\r\n    <version>2.1.4</version>\r\n</dependency>\r\n```\r\n  4.在thymeleaf的配置类ThymeleafProperties中我们可以发现：thymeleaf配置的默认前缀为：\"classpath:/templates/\"，默认后缀为：\".html\"，只要把html页面放在这个路径下，\r\n\r\nthymeleaf就可以帮我们自动渲染。\r\n\r\n```java\r\npublic class ThymeleafProperties {\r\n    private static final Charset DEFAULT_ENCODING;\r\n    public static final String DEFAULT_PREFIX = \"classpath:/templates/\";\r\n    public static final String DEFAULT_SUFFIX = \".html\";\r\n    private boolean checkTemplate = true;\r\n    private boolean checkTemplateLocation = true;\r\n    private String prefix = \"classpath:/templates/\";\r\n    private String suffix = \".html\";\r\n    private String mode = \"HTML\";\r\n...\r\n}\r\n```\r\n如图为用idea创建的springboot的项目结构：将html页面放在resources/templates中即可。\r\n![在这里插入图片描述](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9pbWFnZXMuY25ibG9ncy5jb20vY25ibG9nc19jb20venltMTk5OS8xNjQ1NDE2L29fMjAwMjExMDk1OTExMTMucG5n?x-oss-process=image/format,png)\r\n#### 2.Thymeleaf语法简单使用（th:text, th:utext, th:each）\r\n编写一个controller实现跳转到一个html页面，通过Model对象携带数据\r\n\r\n```java\r\n@Controller\r\npublic class HelloController {\r\n\r\n    @RequestMapping(\"/success\")\r\n    public String success(Model model){\r\n        //存入数据\r\n        model.addAttribute(\"msg\",\"<h1>Hello</h1>\");\r\n        model.addAttribute(\"users\", Arrays.asList(\"小红\", \"小米\",\"小白\"));\r\n        //classpath:/templates/success.html\r\n        return \"success\";\r\n    }\r\n}\r\n```\r\nsuccess.html\r\n\r\n```java\r\n<!DOCTYPE html>\r\n<html lang=\"en\" xmlns:th=\"http://www.thymeleaf.org\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <title>Title</title>\r\n</head>\r\n<body>\r\n    <h1>success</h1>\r\n\r\n    <!--Thymeleaf语法：th:text就是将div中的内容设置为它指定的值-->\r\n\r\n    <div th:text=\"${msg}\">你好</div>\r\n    <!--utext：会解析html，显示相应的效果-->\r\n    <div th:utext=\"${msg}\">你好</div>\r\n    <!--each：遍历-->\r\n    <h3 th:each=\"user:${users}\" th:text=\"${user}\"></h3>\r\n\r\n</body>\r\n</html>\r\n```\r\n通过http://localhost:8080/success路径访问到success.html页面，同时成功显示数据：![在这里插入图片描述](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9pbWFnZXMuY25ibG9ncy5jb20vY25ibG9nc19jb20venltMTk5OS8xNjQ1NDE2L29fMjAwMjExMTEyOTE3MTUucG5n?x-oss-process=image/format,png)\r\n#### 3.Thymeleaf基本语法（属性和表达式）\r\n**Thymeleaf标准表达式**\r\n   \r\n\r\n 1. 变量表达式：**${ }**：用于前端获取后端传递的变量值\r\n\r\n   \r\n\r\n 1. 选择表达式：***{ }**：用于绑定一个对象的属性\r\n\r\n   \r\n\r\n 1. URL链接表达式：**@{ }**：用于链接\r\n\r\n    \r\n\r\n 1. 条件表达式：**三目运算符（表达式 ？值（then）：值（else））**\r\n\r\n    \r\n\r\n\r\n    \r\n**Thymeleaf属性标签：**\r\n![在这里插入图片描述](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9pbWFnZXMuY25ibG9ncy5jb20vY25ibG9nc19jb20venltMTk5OS8xNjQ1NDE2L29fMjAwMjExMTEzMTAxMTYucG5n?x-oss-process=image/format,png)\r\n\r\n \r\n\r\n', 'http://n.sinaimg.cn/sinacn20111/600/w1920h1080/20190331/0f41-huxwryw5226043.jpg', '原创', 0, b'1', b'1', b'1', b'1', b'1', '2020-03-14 17:01:31.000000', '2020-03-14 17:01:31.000000', 1, 1, '简介：模板引擎(这里特指用于Web开发的模板引擎)是为了使用户界面与业务数据(内容)分离而产生的,它可以生成特定格式的文档，用于网站的模板引擎就会生成一个标准的HTML文档。Thymeleaf就是SpringBoot给我们推荐的一种模板引擎！');
INSERT INTO `t_blog` VALUES (5, '利用Set集合去重', '### Set集合特点:\r\n#### ①     一次只存一个元素,\r\n\r\n#### ②     不能存储重复的元素\r\n\r\n#### ③     存储顺序和取出来的顺序不一定一致不能存储重复的元素\r\n\r\n可以利用②这一特点，完成去重的功能。\r\n#### 一：Set集合去掉List集合中重复元素\r\n\r\n```java\r\npublic static void main(String[] args) {\r\n	\r\n	//利用set集合 去除ArrayList集合中的重复元素\r\n	ArrayList<String> list = new ArrayList<>();\r\n	list.add(\"1\");\r\n    list.add(\"1\");\r\n    list.add(\"2\");\r\n    list.add(\"2\");\r\n    list.add(\"3\");\r\n    list.add(\"3\");\r\n    list.add(\"4\");\r\n    list.add(\"4\");\r\n    System.out.println(\"去重前的List集合：\"+list);\r\n    \r\n	Set<String> set = new HashSet<>();\r\n	set.addAll(list);\r\n	System.out.println(\"Set集合：\"+set);\r\n	\r\n	list.clear();            // 清空原有元素 放入被list去重后的元素\r\n	list.addAll(set);\r\n	System.out.println(\"去重后的List集合：\"+list);\r\n}\r\n```\r\n运行结果：\r\n\r\n```java\r\n去重前的List集合：[1, 1, 2, 2, 3, 3, 4, 4]\r\nSet集合：[1, 2, 3, 4]\r\n去重后的List集合：[1, 2, 3, 4]\r\n```\r\n\r\n#### 二：Set集合去掉字符串中重复子串\r\n\r\n```java\r\npublic static void main(String[] args) {\r\n	String str = \"aaab\";\r\n	System.out.println(\"字符串aaab 有非空子串a, b, aa, ab, aaa, aab, aaab，一共 7 个\");\r\n	\r\n	Set<String> set = new HashSet<String>();\r\n	for (int step = 0; step <= str.length() - 1; step++) {\r\n		//扫描全部子串\r\n		for (int begin = 0, end = 1 + step; end <= str.length(); begin++, end++) {     \r\n			String kid = str.substring(begin, end);   //截取字符串子串\r\n			set.add(kid);			//将子串放入set集合，完成去重\r\n		}\r\n	}\r\n	System.out.println(\"去除重复子串后的全部子串有：\"+set.size()+\"个\");\r\n	System.out.println(\"分别是：\" + set);\r\n}\r\n```\r\n运行结果：\r\n```java\r\n字符串aaab 有非空子串a, b, aa, ab, aaa, aab, aaab，一共 7 个\r\n去除重复子串后的全部子串有：7个\r\n分别是：[aa, aaa, a, ab, b, aab, aaab]\r\n```\r\n\r\n', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584366026862&di=62fd65c3b51d4c6b8052f954ef561268&imgtype=0&src=http%3A%2F%2Fimg.article.pchome.net%2F00%2F38%2F63%2F92%2Fpic_lib%2Fs960x639%2F08s960x639.jpg', '原创', 0, b'1', b'1', b'1', b'1', b'1', '2020-03-13 11:21:46.000000', '2020-03-14 16:19:35.000000', 1, 1, 'Set集合特点:\r\n① 一次只存一个元素,\r\n② 不能存储重复的元素\r\n③ 存储顺序和取出来的顺序不一定一致不能存储重复的元素');
INSERT INTO `t_blog` VALUES (6, 'mybatis根据日期查询、查询日期并返回', '### 方法：\r\n\r\n#### 1.查询日期，返回日期字符串\r\n```handlebars\r\n//查询所有博客对应的年份，返回一个集合\r\nList<String> findGroupYear();  \r\n```\r\n#### 2.根据日期查询\r\n```handlebars\r\n//根据年份查询博客信息\r\nList<Blog> findByYear(@Param(\"year\") String year);  \r\n```\r\n\r\n\r\n### mybatis映射:\r\n\r\n\r\n```java\r\n<select id=\"findGroupYear\" resultType=\"String\">\r\n    select DATE_FORMAT(b.update_time, \'%Y\') from t_blog b\r\n</select>\r\n\r\n\r\n<select id=\"findByYear\" resultType=\"Blog\">\r\n    select b.title, b.update_time, b.id, b.flag\r\n    from t_blog b\r\n    where DATE_FORMAT(b.update_time, \'%Y\') = #{year}\r\n</select>\r\n```\r\n\r\n## 总结：\r\n**DATE_FORMAT(date,format)：date表示日期，format表示显示的格式。**\r\n**该方法可以把date类型转换为String类型的字符串**\r\n', 'http://p.qpic.cn/dnfbbspic/0/dnfbbs_dnfbbs_dnf_gamebbs_qq_com_forum_202002_04_082156ifotspmtuzcffycn.jpg/0', '原创', 0, b'1', b'1', b'1', b'1', b'1', '2020-03-21 11:54:41.000000', '2020-03-21 15:33:02.000000', 5, 1, 'mybatis根据日期查询、查询日期并返回\r\n方法：\r\n1.查询日期，返回日期字符串');
INSERT INTO `t_blog` VALUES (10, '蓝桥杯：基础练习 01字串（java）', '## 试题 基础练习 01字串\r\n  \r\n### 资源限制\r\n时间限制：1.0s   内存限制：256.0MB\r\n### 问题描述\r\n对于长度为5位的一个01串，每一位都可能是0或1，一共有32种可能。它们的前几个是：\r\n\r\n00000\r\n\r\n00001\r\n\r\n00010\r\n\r\n00011\r\n\r\n00100\r\n\r\n请按从小到大的顺序输出这32种01串。\r\n\r\n### 输入格式\r\n本试题没有输入。\r\n### 输出格式\r\n输出32行，按从小到大的顺序每行一个长度为5的01串。\r\n### 样例输出\r\n00000\r\n00001\r\n00010\r\n00011\r\n<以下部分省略>\r\n\r\n#### 思路：\r\n**使用Integer.toBinaryString()将十进制整数转换为二进制字符串，再判断长度是否能整除5，在前面加0输出**\r\n\r\n```java\r\npublic class 字串01 {\r\n	public static void main(String[] args) {\r\n		\r\n		for(int i = 0; i <= 31; i++) {\r\n			String s = Integer.toBinaryString(i);\r\n			int len = s.length();\r\n			switch(len % 5) {\r\n			case 1: s = \"0000\" + s;break;\r\n			case 2: s = \"000\" + s;break;\r\n			case 3: s = \"00\" + s;break;\r\n			case 4: s = \"0\" + s;break;\r\n			case 0: break;\r\n			}\r\n			System.out.println(s);\r\n		}\r\n	}\r\n}\r\n```\r\n\r\n**另一种方法，不用判断加0，也可以直接使用printf输出指定格式的整数：**\r\n```java\r\npublic class 字串01 {\r\n	public static void main(String[] args) {\r\n		\r\n		for(int i = 0; i <= 31; i++) {\r\n			String s = Integer.toBinaryString(i);\r\n			int n = Integer.parseInt(s);\r\n			System.out.printf(\"%05d\\n\",n);\r\n		}\r\n	}\r\n}\r\n```\r\n\r\n', 'http://5b0988e595225.cdn.sohucs.com/images/20190112/12a825d7c0f94223a0b1fc3dcddc6570.jpeg', '原创', 0, b'1', b'1', b'1', b'1', b'1', '2020-03-21 16:19:41.000000', '2020-03-21 16:19:41.000000', 6, 1, '问题描述\r\n\r\n对于长度为5位的一个01串，每一位都可能是0或1，一共有32种可能。它们的前几个是：\r\n\r\n00000\r\n\r\n00001\r\n\r\n00010\r\n\r\n00011\r\n\r\n00100\r\n\r\n请按从小到大的顺序输出这32种01串。');
INSERT INTO `t_blog` VALUES (11, '安东尼经典语录', '<p>我怕你说话，我怕你沉默。\r\n我怕你来到，我怕你离开。\r\n我怕抓紧你，我怕放走你。\r\n我怕你看到我，我怕你无视我。\r\n我怕你想念我，我怕你忘记我。\r\n我怕你过于依赖我，我怕你不再需要我。\r\n我怕你爱我，我怕你不爱我。\r\n我怕你太爱我，我怕你不够爱我。</p>\r\n<p>不管昨夜经历了怎样的泣不成声 早晨醒来这个城市依然车水马龙</p>\r\n<p>不要让那个喜欢你的人 撕心裂肺地为你哭那么一次 因为 你能把他伤害到那个样子的机会 只有一次 那一次以后 你就从不可或缺的人变成可有可无的人了 即使他还爱你 可是 总有一些东西真的改变了</p>\r\n<p>应该趁着年轻 和喜欢的人一起 制造些比夏天还要温暖的事</p>\r\n<p>风不懂云的漂泊。天不懂雨的落魄。眼不懂泪的懦弱。所以你不懂我的选择。也可以不懂我的难过。不是每一个人都一定要快乐。不是每一种痛都一定要诉说</p>\r\n<p>后来，我终于能接受，我们不会再在一起这个实事。我想我唯一能做的就是，继承那些，你拥有的让我着迷的品质，好好地生活下去。</p>\r\n<p>如果你喜欢的人不喜欢你，那么就算全世界的人都喜欢你，还是会觉得孤独吧。If the person you like doesn\'t like you ,wouldn\'t it still be lonely even if the whole world loves you.</p>\r\n<p>那些 我们一直惴惴不安 又充满好奇的未来 会在心里隐隐约约地觉得它们是明亮的</p>\r\n<p>人生，总会有不期而遇的温暖，和生生不息的希望。</p>\r\n<p>其实我一直相信 等你出现的时候我就知道是你</p>\r\n<p>我谈过最长的恋爱，就是自恋，我爱自己，没有情敌。</p>\r\n<p>不知道如何爱你，看着你，是我唯一的方式。I don\'t know how to love you ,looking at you is the only way i know</p>\r\n<p>我所知道的关于你的事情 就只有天气预报了</p>\r\n<p>我觉得 我们俩之间就像喝酒 我干杯 你随意</p>\r\n<p>玫瑰当然爱小王子\r\n不过当你真的喜欢一个人的时候 就会想很多 会很容易办蠢事 说傻话\r\n更别说 那个人像小王子那么可爱\r\n玫瑰很温柔 其实她只是不知所措罢了\r\n至于小王子 他还太小了 不明白玫瑰的温柔\r\n他的离开也许并不是坏事</p>\r\n<p>最喜欢早上，好像什么都可以重新开始，中午的时候就开始觉得忧伤，晚上最难度过。</p>\r\n<p>I know that one day I will forgot you.\r\nI don\'t have anticipation.\r\nI don\'t feel sad.\r\nI just know, that\'s all.</p>\r\n<p>长大了 总有那么一两次机会 你会为了喜欢的人 跑那么一跑 因为 如果是对的人的话 走路真的来不及</p>\r\n<p>很久以后，那些好极了和糟透了的时刻我们都会忘记，唯一真实和难忘的是，我们抬头挺胸走过的人生。</p>\r\n<p>不论是我的世界车水马龙繁华盛世 还是它们都瞬间消失化为须臾 我都会坚定地走向你 不慌张 不犹豫</p>\r\n', 'https://images.pexels.com/photos/17539754/pexels-photo-17539754.jpeg', '原创', 1, b'1', b'1', b'1', b'1', b'1', '2020-03-22 19:36:45.000000', '2023-07-12 20:25:18.000000', 3, 2, '不论是我的世界车水马龙繁华盛世\r\n 还是它们都瞬间消失化为须臾 \r\n我都会坚定地走向你 不慌张 不犹豫');
INSERT INTO `t_blog` VALUES (19, 'springboot自动装配原理初探', '<h1 id=\"springboot自动装配原理初探\">springboot自动装配原理初探</h1>\n<p>摘抄于<a href=\"https://www.cnblogs.com/shamo89/p/8184960.html\" title=\"https://www.cnblogs.com/shamo89/p/8184960.html\" target=\"_blank\">https://www.cnblogs.com/shamo89/p/8184960.html</a></p>\n<p>​			<a href=\"https://www.cnblogs.com/hellokuangshen/p/12450327.html\" title=\"https://www.cnblogs.com/hellokuangshen/p/12450327.html\" target=\"_blank\">https://www.cnblogs.com/hellokuangshen/p/12450327.html</a></p>\n<p><img src=\"https://i.loli.net/2021/04/15/bosdCWn7tVx3N6Y.png\" alt=\"1112095-20181115230505205-305138350.png\" /></p>\n<blockquote>\n<pre><code class=\"language-java\">1、推断应用的类型是普通的项目还是Web项目\n2、查找并加载所有可用初始化器 ， 设置到initializers属性中\n3、找出所有的应用程序监听器，设置到listeners属性中\n4、推断并设置main方法的定义类，找到运行的主类\n@SpringBootApplication\n	@SpringBootConfiguration// 继承了Configuration，表示当前是注解类\n	@ComponentScan// 扫描路径设置（具体使用待确认）\n	//@EnableAutoConfiguration也是借助@Import的帮助，将所有符合自动配置条件的bean定义加载到IOC容器\n	@EnableAutoConfiguration// 开启springboot的注解功能，springboot的四大神器之一，其借助@import的帮助\n		@AutoConfigurationPackage// 自动配置包\n			@Import(AutoConfigurationPackages.Registrar.class)// 导入当前主程序类的 *同级以及子级*的包组件\n		@Import(AutoConfigurationImportSelector.class)// 导入自动配置的组件\n</code></pre>\n</blockquote>\n<p>@ComponentScan的功能其实就是自动扫描并加载符合条件的组件（比如@Component和@Repository等）或者bean定义，最终将这些bean定义加载到IoC容器中。我们可以通过basePackages等属性来细粒度的定制@ComponentScan自动扫描的范围，如果不指定，则默认Spring框架实现会从声明@ComponentScan所在类的package进行扫描。</p>\n<blockquote>\n<p>注：所以SpringBoot的启动类最好是放在root package下，因为默认不指定basePackages。</p>\n</blockquote>\n<pre><code class=\"language-java\">static class Registrar implements ImportBeanDefinitionRegistrar, DeterminableImports {\n		@Override\n		public void registerBeanDefinitions(AnnotationMetadata metadata, BeanDefinitionRegistry registry) {\n			register(registry, new PackageImports(metadata).getPackageNames().toArray(new String[0]));\n            //new PackageImport(metadata).getPackageName()，它其实返回了当前主程序类的 *同级以及子级*的包组件\n		}\n}\n</code></pre>\n<pre><code class=\"language-java\">AutoConfigurationImportSelector 继承了 DeferredImportSelector 继承了 ImportSelector\n<p>ImportSelector中声明了一个方法为：selectImports。\nAutoConfigurationImportSelector实现了这个方法：selectImports\n作用是：加载外部文件（spring-boot-autoconfiguration下的META-INF/spring.factories）\n这个外部文件，有很多自动配置的类\n</code></pre></p>\n<p><img src=\"https://i.loli.net/2021/04/15/fwGS7zTq9FsWDBK.png\" alt=\"1335795-20181025172502394-39889528.jpg\" />\n<img src=\"https://i.loli.net/2021/04/15/8ReAjguKbcO6ka3.png\" alt=\"1418974-20200309184347408-1065424525.png\" /></p>\n', 'http://p.qpic.cn/dnfbbspic/0/dnfbbs_dnfbbs_dnf_gamebbs_qq_com_forum_202002_04_082156ifotspmtuzcffycn.jpg/0', '原创', 10, b'1', b'1', b'1', b'1', b'1', '2021-04-14 13:08:04.000000', '2023-07-12 20:32:48.000000', 1, 2, '最后测试');

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `tags_id` bigint NOT NULL,
  `blogs_id` bigint NOT NULL,
  INDEX `FK5feau0gb4lq47fdb03uboswm8`(`tags_id` ASC) USING BTREE,
  INDEX `FKh4pacwjwofrugxa9hpwaxg6mr`(`blogs_id` ASC) USING BTREE,
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (3, 4);
INSERT INTO `t_blog_tags` VALUES (4, 3);
INSERT INTO `t_blog_tags` VALUES (5, 3);
INSERT INTO `t_blog_tags` VALUES (5, 4);
INSERT INTO `t_blog_tags` VALUES (7, 2);
INSERT INTO `t_blog_tags` VALUES (6, 5);
INSERT INTO `t_blog_tags` VALUES (5, 3);
INSERT INTO `t_blog_tags` VALUES (4, 3);
INSERT INTO `t_blog_tags` VALUES (4, 6);
INSERT INTO `t_blog_tags` VALUES (7, 10);
INSERT INTO `t_blog_tags` VALUES (4, 1);
INSERT INTO `t_blog_tags` VALUES (8, 11);
INSERT INTO `t_blog_tags` VALUES (3, 19);
INSERT INTO `t_blog_tags` VALUES (4, 19);
INSERT INTO `t_blog_tags` VALUES (5, 19);
INSERT INTO `t_blog_tags` VALUES (6, 19);
INSERT INTO `t_blog_tags` VALUES (13, 19);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `blog_id` bigint NULL DEFAULT NULL,
  `parent_comment_id` bigint NULL DEFAULT NULL,
  `admin_comment` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKke3uogd04j4jx316m1p51e05u`(`blog_id` ASC) USING BTREE,
  INDEX `FK4jj284r3pb7japogvo6h72q95`(`parent_comment_id` ASC) USING BTREE,
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, '小白', 'bai@qq.com', '小白的评论', '/images/avatar.jpg', '2020-03-15 21:28:13.000000', 4, NULL, b'0');
INSERT INTO `t_comment` VALUES (2, '小红', 'hong@qq.com', '小红的评论', '/images/avatar.jpg', '2020-03-15 21:35:02.000000', 4, NULL, b'0');
INSERT INTO `t_comment` VALUES (5, '小蓝', 'lan@qq.com', '小蓝的评论', '/images/avatar.jpg', '2020-03-16 15:04:24.000000', 4, NULL, b'0');
INSERT INTO `t_comment` VALUES (7, '朱一鸣', '691639910@qq.com', '博主的评论', 'http://5b0988e595225.cdn.sohucs.com/images/20181103/feaa7d14883047fb81bbaa16f681f583.jpeg', '2020-03-16 15:11:07.000000', 2, NULL, b'1');
INSERT INTO `t_comment` VALUES (8, '安东尼', '2333@qq.com', '不论是我的世界车水马龙繁华盛世 还是它们都瞬间消失化为须臾 我都会坚定地走向你 不慌张 不犹豫', '/images/avatar.jpg', '2020-03-24 17:41:17.000000', 11, NULL, b'0');
INSERT INTO `t_comment` VALUES (9, '想要猫的朱', '1548963912@qq.com', '测试', 'https://picsum.photos/id/1005/100/100', '2021-04-13 03:30:26.000000', 11, NULL, b'0');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (3, '前端');
INSERT INTO `t_tag` VALUES (4, '后端');
INSERT INTO `t_tag` VALUES (5, 'springboot');
INSERT INTO `t_tag` VALUES (6, 'java');
INSERT INTO `t_tag` VALUES (7, 'javase');
INSERT INTO `t_tag` VALUES (8, '杂谈');
INSERT INTO `t_tag` VALUES (11, '测试3');
INSERT INTO `t_tag` VALUES (12, '测试6');
INSERT INTO `t_tag` VALUES (13, '测试');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, '学习方法');
INSERT INTO `t_type` VALUES (2, '划水方法');
INSERT INTO `t_type` VALUES (3, '娱乐方法');
INSERT INTO `t_type` VALUES (4, '钓鱼方法');
INSERT INTO `t_type` VALUES (5, '嘻嘻方法');
INSERT INTO `t_type` VALUES (6, '动漫方法');
INSERT INTO `t_type` VALUES (9, '测试3');
INSERT INTO `t_type` VALUES (10, '测试5');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `update_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '朱一鸣', '朱一鸣', 'e10adc3949ba59abbe56e057f20f883e', '691639910@qq.com', 'https://picsum.photos/id/24/100/100', 1, '2020-03-08 18:25:26.000000', NULL);
INSERT INTO `t_user` VALUES (2, '卢本伟', 'lbw', 'e10adc3949ba59abbe56e057f20f883e', 'lbw0928@163.com', 'https://picsum.photos/id/1005/100/100', 1, '2021-03-31 21:00:19.000000', NULL);

SET FOREIGN_KEY_CHECKS = 1;
