# toolsmgt-dev
This is a project focusing on "Tools Management" in manufacture workshop from Value Plus.Welcome!

Editted by Ivan Shi on Apr 17 2018 11:48
Email: shiyifan00@live.cn

## 开发环境目标

| Project Facet | Choice |
| :------------ | :------------ |
| Source Version Control  | Git (deposited on GitHub) ver.2.7.4+  |
| Web Dev. Framework  |  Spring(IoC Container) ver.5.0.5+<br/>SpringMVC(MVC Framework) ver.5.0.5+<br/>MyBatis(Data Persistence) ver.3.4.6+ |
| Database  | MySQL Community Server ver.5.7.21+  |
| Project Build Automation Tool  | Maven ver.3.3.9+  |
| Integrated Dev. Environment  | Intellij IDEA Ultimate ver.2018.1.1+  |
| Web Service Framework  | Apache CXF ver.3.2.4+ |

### Source Version Control
#### Git
Git是一个分布式的版本控制系统，能够完全追踪文本变化并能够根据更改历史进行回溯。另外，可以通过Git的"Merge"(合并)功能将两个文本文件的内容进行合并以达到多人协同开发的效果。Git能够管理并存储所有用户每一次增加、修改、删除、合并等操作之后的文件快照并串联为一个线性记录。然后可以依据该线性记录进行版本变更。
Git的使用过程中涉及到一个“Repository(仓库)”的概念。代码文件存放在Repository中进行管理。Repository既可以是local(本地)也可以是remote(远程)。
GitHub是世界上最大的Git Remote Repository的服务供应商，GitHub中默认创建的Repository都是public(公开)且免费，即每个人都能够看到托管在上面的项目的完整代码。GitHub也允许用户创建private(私有)的Repository，不过需要支付一定的费用。
我们将项目源代码存放在GitHub中进行托管。工作流程如下：
```text
                                                                +-------------------+
+-----------------+            +-------------------+    push    |                   |
|                 |   commit   |                   |  +------>  | remote repository |
|  source files   |  +------>  | local repository  |            |                   |
|                 |            |                   |  <------+  |      GitHub       |
+-----------------+            +-------------------+    pull    |                   |
                                                                +-------------------+
```
[Git官方网站](https://git-scm.com/)<br/>
[Git下载地址](https://git-scm.com/downloads)<br/>
[Git官方教程](https://git-scm.com/book/zh/v2)<br/>
[Git第三方教程(推荐)](https://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000)<br/>

下载并安装Windows版的Git之后会在系统右键菜单中添加"Git GUI Here"和"Git Bash Here" 两个菜单选项。右键点击"Git Bash Here"打开Linux Terminal模拟器，键入以下命令:

> $ ssh-keygen

系统会依次询问key的存储路径、key的passphrase，可直接按Enter键确认。该命令会在用户目录下(c:\Users\<您的用户名>)创建.ssh文件夹并写入两个文件:id_rsa, id_rsa.pub,其中id_rsa是私钥，id_rsa.pub是公钥。键入以下命令:

> $ cat ~/.ssh/id_rsa.pub

系统会显示该文件的具体内容，将内容全部复制出来。稍后会用到。

#### GitHub
[GitHub官方网站](https://github.com/)<br/>
在官方网站上注册一个GitHub的帐号，注册的时候需要填写用户名和有效的电子邮箱。注册之后可以通过用户名或者电子邮箱进行登陆。然后您需要将您的用户名或者电子邮箱发送到本文作者的邮箱中，作者会将您添加到公司的Organization中的Team下。GitHub随后会给您发送一封确认邮件，在邮件中点击链接即可加入Team。也可以在GitHub中的个人消息中心确认邀请。确认邀请之后登陆GitHub，点击右侧的"Your teams"下的"valueplus2/speclogger"进入ValuePlus Oragnization下的SpecLogger Team主页。可以浏览到该Team大部分的内容，包括该Team的Repository。点击上方"Repositories"查看该Team下所有的Repository，点击"valueplus2/toolsmgt-dev"进入工具管理系统的GitHub主页。在该主页的右侧可以看到一个"Clone or download"的按钮，点击该按钮后会显示当前项目的Git地址 

    git@github.com:valueplus2/toolsmgt-dev.git

点击上方"Settings"后选择左侧的"Deploy Keys"，点击右侧"Add Deploy Key",然后将刚才复制出来的id_rsa.pub的文件内容复制到"Key"的文本框中，勾选"Allow write access"，在"Title"文本框中自定义一个名称，最后点击"Add key"完成ssh key的添加。

在Windows资源管理器中导航到您想要创建项目的目录，右键点击"Git Bash Here"打开Linux Terminal模拟器。键入以下命令:

> $ git clone <proj_addr>

将<proj_addr>换为上文中"工具管理系统的Git地址"，然后Git会将项目文件下载到您的目录中。键入以下命令:

> $ cd toolsmgt-dev/
> $ git status

系统将会显示"Your branch is up-to-date with 'origin/master'"字样，此时toolsmgt-dev目录就是您项目的local repository并且您当前的local repository已经和remote repository成功关联。
其余的Git命令可自行查看官方文档或第三方教程学习。
 ### Database
主机:47.104.190.227 端口:1714 用户名:vp_dbadm 密码:Valuep_1234
可利用命令行工具（如MySQL Utilities）或者图形化界面（如Navicat）连接操作数据库。<br/>
命令行工具
[MySQL Utilities下载地址](https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-utilities-1.6.5-winx64.msi)<br/>
下载安装后运行cmd，浏览到安装目录下的MySQL Server 5.5\bin\目录下，键入以下命令： 

> $ mysql -u vp_dbadm -h 47.104.190.227 -p -P 1714

"-u" 参数指定登陆用户名，"-h" 参数指定主机地址，"-p" 参数指示用需要密码登陆，"-P" 参数指定端口号。回车后输入密码即可登陆成功。
图形化工具（推荐）
下载Navicat后依据图形化界面操作配置数据库连接：
主机:47.104.190.227
端口:1714
用户名:vp_dbadm
密码:Valuep_1234
### Maven
Maven是一个Java项目自动化构建工具。它能够负责管理项目开发过程中所有的资源。它支持很多种构建类型，并且对于每一种支持的构建类型已经定义好了一组构建规则和工具集。Maven还能够对依赖进行全面与细致的管理，避免了开发过程中依赖资源及其相互之间管理的混乱。另外，Maven还支持各种文档信息的发布，包括构建过程中的各种输出，javadoc，产品文档等。
在Maven中，存在一个"Convention over configuration"("约定大于配置")设计理念，该设计理念旨在减少开发者在复杂程度较高的项目开发过程中由配置信息产生的工作量。所有的默认配置信息都存储在一个文件中，当用户根据自身情况需要更改部分配置信息的时候仅需要创建一个新的文件,仅写入需要修改的信息即可。程序读取配置信息时仅读取用户修改的信息，其他配置信息直接从默认配置信息文件中inherit(继承)。如下图所示:
```text
+------------------------------+           +----------------------+            +-------------+
|                              |  inherit  |                      |    read    |             |
| Total Default Configurations | +-------> | Custom Configuration | <--------+ | Application |
|                              |           |                      |            |             |
+------------------------------+           +----------------------+            +-------------+
```
Maven其实是一系列plugin(插件)的集合。每一个plugin包含一个或多个goal(目标)，每一个goal表示对项目的具体操作，例如:编译源文件、输出信息和清理临时文件等操作。另外，Maven对软件的开发过程定义了三个lifecycle(生命周期)，分别是:default, clean和site，而每个lifecycle又包含一系列的phase(阶段)，如下图所示:
```text
+---------------------------------------+
|          clean(lifecycle)             |
+--------------+ phases +---------------+
|                                       |
| pre-clean +--> clean +--> post-clean  |
|                                       |
+---------------------------------------+

+------------------------------------------------------------------------------------+
|                               default(lifecycle)                                   |
+------------------------------------+ phases +--------------------------------------+
|                                                                                    |
| validate +--> complie +--> test +--> package +--> verify +--> install +--> deploy  |
|                                                                                    |
+------------------------------------------------------------------------------------+

+-----------------------------------------------------+
|                  site(lifecycle)                    |
+---------------------+ phases +----------------------+
|                                                     |
| pre-site +--> site +--> post-site +--> site-deploy  |
|                                                     |
+-----------------------------------------------------+
```
而每个phase预定义了一系列plugin的goal(目标)。Maven可以既执行某一个phase，也可以执行某一个具体的goal,例如:

> $ mvn package

该命令执行default lifecycle中的package phase和package之前的所有phase，即validate -> package。该命令首先验证(validate)项目中是否存在错误并且所有必需的信息是否可用，然后编译(compile)项目源代码。使用可用的单元测试框架进行测试(test)，最后将编译完成的源代码文件打包(package)。

> $ mvn dependency:copy-dependency

该命令仅执行dependency plugin中的copy-dependency goal。该命令表示复制当前项目所有的依赖到输出路径中。
对于一个由Maven管理的项目，在该项目的根目录下会存在一个名为"pom.xml"的配置文件，该配置文件包含了用户对默认配置信息的修改。当用户执行Maven某一个phase或者一个goal时，Maven将该配置文件中未提及的配置信息从默认配置文件中inherit下来，然后根据合并后的配置信息进行相应的操作。从GitHub上面Clone下来的项目中，toolsmgt\pom.xml就是该Maven项目的配置文件。<br/>
[Maven官方用户指南](https://maven.apache.org/guides/index.html)<br/>
[POM文件用户文档](https://maven.apache.org/pom.html)<br/>
[Maven官方网站](https://maven.apache.org/)<br/>
### IntelliJ IDEA
[Intellij IDEA官方下载地址](https://www.jetbrains.com/idea/download/#section=windows)<br/>
选择下载"Ultimate"版本，下载后安装时可选择默认插件配置即可。
安装之后[点击此处](https://blog.csdn.net/qq_35246620/article/details/79050895)网址进行破解激活
Intellij IDEA中的项目结构名称和Eclipse项目结构名称略有不同，大体的对应关系如下:

| Intellij IDEA | Eclipse |
| --- | --- |
| Project | Workspace |
| Module | Project |

同Eclipse一样，在Intellij IDEA中，一个Project下可以包含零个或者多个Module，Module之间既可以相互独立也可以相互依赖。对于本项目在GitHub上面存放的其实是一个Module而不是Project。

将项目git clone下来之后，打开Intellij IDEA，依次点击菜单栏"File"->"New"->"Project..."，在左侧栏选择"Empty Project"，点击下方按钮"Next"。在"Project Location"一栏的右侧点击"..."按钮选择Project的目录，浏览到git clone下目录"toolsmgt-dev\"，点击toolsmgt-dev目录后确定，然后点击下方"Finish"按钮完成Project的创建。此时在git clone的目录下创建了一个空的Intellij IDEA的Project，然后我们需要把Module添加到当前的空Project中。依次点击菜单栏"File"->"New"->"Module from Existing Sources..."，浏览到toolsmgt-dev\toolsmgt\，选择toolsmgt.iml文件确定即可。此时Intellij IDEA会自动扫描该目录下的文件。在Intellij IDEA中按下"Alt + 1"组合键或者点击左边栏中的"Project"打开Project窗口，右键选择"pom.xml"文件，点击"Add as Maven Project"将该项目识别为Maven项目。此时GitHub上面的项目已经成功导入并集成到Intellij IDEA的开发环境中。
Intellij IDEA中已经集成了相关的Git, Maven的图形化界面与工具。因此，您既可以使用终端如cmd, bash也可以使用集成的图形化工具进行工作。
### Web Dev. Framework 
#### 轻量级Java EE框架的分层模型概述
Domain Object层（领域对象） 此层以一系列的POJO（Plain Old Java Object，普通的java对象）组成，往往包含了各自所需的业务逻辑方法。
DAO层（Data Access Object，数据访问层） 此层有一系列接口组成，接口中声明了对数据库的CRUD原子操作。
Service层（业务逻辑层） 此层有一系列的业务逻辑对象组成，这些业务逻辑对象实现了系统所需要的业务逻辑方法。这些仅仅用于暴露Domain Object对象所实现的业务逻辑方法，也可能是依赖DAO组件实现的业务逻辑方法。
Controller层（控制层） 此层有一系列控制器组成，这些控制器用于拦截用户请求，并调用业务逻辑组件和业务逻辑方法，处理用户请求，并根据处理结果向不同的表现层组件转发。 
View层（表现层） 此层由一系列的JSP页面组成，负责收集用户请求，并显示处理结果。
```text
                                                      Persist
                                         +------+      Data       +------------+
                                         |  DB  |  +----------->  |   Domain   |
      +-----------+                      |      |  <-----------+  |   Object   |
      |   View    |                      +------+     Provide     +------------+
      +-----------+                                    Data
                                                                    +       ^
        +       ^                                                   |       |
        |       |                                               ORM |       | Acquire
 Send   |       | Present                                           |       |  POJO
Request |       |  Data                                             |       |
        |       |                                                   |       |
        |       |                                                   |       |
        v       +                                                   v       +
                                                          CRUD
    +---------------+     Call       +--------------+   Operation  +-----------+
    |      MVC      |  +--------->   |   Bussiness  |  +-------->  |    DAO    |
    |   Controller  |  <---------+   |     Logic    |  <--------+  |           |
    +---------------+  Implentation  +--------------+     Data     +-----------+
                                                         Access
```
#### MVC思想概述
MVC思想将一个应用分成Model（模型）、View（视图）、Controller（控制器）三部分。这三部分以最少的耦合协同作业，提高应用的可扩展性和可维护性。
其中，Model由JavaBean担当，View由前端页面担当，Controller由Servlet担当，各个部分协调工作流程如下：
```text
   +-----------+
   |  Browser  |
   +-----------+

        +  ^
Request |  | Response           +--------------+
        |  |           +------> |   JavaBean   |
        v  +           |        +--------------+
                       |
   +------------+      | Call Model Method
   |   Servlet  | +----+
   +------------+

          +              +------------+
          +------------> |    View    |
               Forward   +------------+
               Request
```
可见，Servlet控制器是整个框架体系的核心，Spring MVC框架中，包含一个用于调度的Servlet-->DispatcherServlet,Spring MVC就是围绕这个核心展开，DispatcherServlet是Spring MVC是总导演，总策划，它负责截获请求并将其分派给相应的处理器。Spring MVC框架包含注解驱动控制器，请求及响应的信息处理、视图解析、本地化解析、上传文件解析、异常处理以及表单标签绑定等内容。
#### DispatcherServlet的运行原理

 1. 浏览器请求提交至DispatcherServlet前端控制器
 2. DispatcherServlet控制器调用DefaultAnnotationHandlerMapping，以查找与请求地址相对应的控制器
 3. DefaultAnnotationHandlerMapping找到对应的控制器及其方法，并将结果返回给DispatcherServlet
 4. DispatcherServlet将请求传递至AnnotationMethodHandlerAdapter组件，以适配调用控制器的方法
 5. AnnotationMethodHandlerAdapter适配调用控制器的方法，适配内容包括方法的参数列表和返回值
 6. 控制器方法处理请求，并将结果返回至AnnotationMethodHandlerAdapter
 7. AnnotationMethodHandlerAdapter将返回结果封装到ModelAndView对象（包含了处理结果的视图和视图中要使用的数据），进而返回给DispatcherServlet
 8. DispatcherServlet基于ModelAndView对象调用ViewResolver，以查找指定的视图
 9. ViewResolver查找并确定视图，并返回给DispatcherServlet
 10. DispatcherServlet调度视图，视图负责将结果显示到客户端
#### Spring MVC Web应用部署
 1. 使用DispatcherServlet需要把它配置在Web应用的部署描述符web.xml文件中，配置如下：
```xml
<servlet>
	<!--Servlet名称-->
	<servlet-name>dispatcher</servlet-name>
	<!--使用哪个Servlet-->
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
	<!--加载Serlvet的优先级，如果是1，则再启动服务器时立即加载-->
        <load-on-startup>1</load-on-startup>
</servlet>
<servlet-mapping>
        <servlet-name>dispatcher</servlet-name>
	<!--Servlet的拦截的请求路径，监听当前域的所有请求-->
        <url-pattern>/</url-pattern>
</servlet-mapping>
```
 2. 配置统一网站字符集编码，解决中文乱码问题，此步也在web.xml文件中
```xml
<!-- 统一网站字符编码 -->
 <filter>
    <filter-name>CharacterEncodingFilter</filter-name>
    <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>    
    <init-param>
        <param-name>forceEncoding</param-name>
        <param-value>true</param-value>
    </init-param>
    <init-param>
        <param-name>encoding</param-name>
        <param-value>UTF-8</param-value>
    </init-param>
 </filter>
 <filter-mapping>
    <filter-name>CharacterEncodingFilter</filter-name>
    <url-pattern>/*</url-pattern>
 </filter-mapping>
```
3.配置MVC核心配置文件，默认在WEB-INF下创建Spring XML文件，文件命名方式必须以[servlet-name]-servlet.xml的，servlet-name与web.xml中配置DispatcherServlet中的servlet-name值对应，这里，文件名应取为dispatcher-servlet.xml,之后配置核心文件内容：
```xml
<!-- 配置包扫描，会扫描该包下的所有类文件，将包含MVC注解的类全部注册为控制器 -->
<context:component-scan base-package="所需扫描包" use-default-filters="false">
      <context:include-filter type="annotation" expression="org.springframework.stereotype.Controller"/>
</context:component-scan>

<!-- 指定Spring容器对Spring MVC相关组件的注解进行注册，相当于配置HandlerMapping和HandlerAdapter，进行该项配置，Spring就会使用系统默认的处理器和适配器 -->
<mvc:annotation-driven/>

<!-- 放行静态资源(img,css...),交给默认的tomcat去处理,如果前端控制器配置的是/，这个地方必须配置 -->
<mvc:default-servlet-handler/>

<!-- 定义视图解析器  -->
<bean id="defaultViewResolver" class='org.springframework.web.servlet.view.InternalResourceViewResolver'>
      <!-- 配置前缀和后缀：控制器返回的url会经过视图解析器解析最终的url是：前缀+url+后缀 -->
      <property name="prefix" value="/" />
      <property name="suffix" value=".jsp" />
</bean>
```
4.编写控制器
```java
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //Spring MVC检测到该注解，将此类注册为控制器
@Scope(value="prototype") //该类的作用域，此处为原型模式，每次调用此类都会创建该类的一个实例，常见的模式还有singleton-->单例模式
@RequestMapping("/springmvc") //请求路径，如果标注在类的上方，则类中所有请求方法的路径都要基于此路径
public class SimpleController {
　　@RequestMapping(value = "/test",method = RequestMethod.POST) //该请求方法的请求路径，完整的请求路径为/springmvc/test
　　public String test(Model model) {
　　　　model.addAttribute("message", "Hello world！"); //model或ModelAndView，都可以用于存储业务信息
        //返回的视图名称，经过视图解析器的处理，拼接前缀后缀形成完整的相应路径，按照上面配置的视图解析器，最终将请求转发到WebContent目录下的HelloWorld.jsp页面
        return "HelloWorld";
　　}
}
```
HelloWorld.jsp页面：
```jsp
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>MVC测试</title>
  </head>
  <body>
	<!--使用EL表达式或JSTL标签库可以获取到Model中存储的业务数据-->
	${requestScope.message }
  </body>
</html>
```
地址栏中在项目的根路径下拼接/spring/test，直接转发到HelloWorld.jsp页面，并且页面上将显示"Hello World!"信息。

在实际开发中，每个Controller中的每个方法都属于一个独立的控制器，他们分别调用各自的业务层逻辑代码，为视图层提供数据。此处只是为MVC的基本使用做了简单介绍，但MVC能做的远不止这些，有关其他注解请自行查阅联系，包括：

| 注解 | 作用 |
|---|---|
| @ResponseBody | 解决json格式数据的请求相应处理 |
| @RequestParam | 解决表单传参的参数对应问题 |
| @PathVariable | 解析占位符 |
| @SessionAttributes | 存储一次单独会话信息 |
| @ModelAttribute | 将请求参数绑定到Model对象 |

#### Mybatis简介
什么是ORM？
ORM全称Object/Relation Mapping,即对象/关系数据库映射。ORM框架提供了一系类规范，用于解决OOP和RDB发展不同步的中间解决方案，简单而言，ORM框架就是讨论如何将数据库的表结构数据映射称Java中的一个普通的Java文件，并用Java的面向对象操作方法操作数据库的CRUD；整个映射的关系对应为：

| Relation | Object |
|---|---|
| 表结构 | Java类 |
| 表字段 | Java类成员变量 |
| 表记录 | Java类实例 |

何为持久层框架？
持久，即存储数据的持久性，数据的存储往往不直接存储在内存，而是将数据存储在硬盘、磁带等媒体介质，需要时再从这些介质中调用。持久层可以看做数据库、硬盘这种可以持久存储数据的媒体介质；持久化就是讨论如何将数据存储到这些介质。Java 程序员为了操作数据库，最开始是使用JDBC来进行的，但是这种方式开发效率低，要写一堆重复代码，加上关系数据库和对象本身存在所谓的阻抗不匹配，所以导致项目冗杂、难以维护等问题，于是持久层框架产生，就是为了解决如何用面向对象的方法操纵数据库，并且可以将面向对象操作后的结果持久化存储到这些持久化介质的问题。
MyBatis是一个支持普通SQL查询、存储过程和高级映射的优秀持久层框架。MyBatis去掉了几乎所有的JDBC代码和参数的手工设置以及对结果集的检测封装。MyBatis可以使用简单的XML或注解进行配置和原始映射，已将接口和Java的POJO映射成数据库的记录。
MyBatis作为持久层框架，其主要思想是将程序中大量的SQL语句剥离出来，配置在配置文件中，以实现SQL的灵活配置。这样做的好处是将SQL与程序代码分离，做到可以在不修改程序代码的情况下，直接在配置文件中修改SQL。

配置使用MyBatis
1.MyBatis的数据库操作
首先创建数据库mybatis，在数据库中创建tb_user表，表信息如下：

| Column | DataType | IsNULL |
| :--- | :--- | :--- |
| ID | INT | 自增 |
| NAME | VARCHAR | DEFAULT NULL |
| SEX | CHAR | DEFAULT NULL |
| AGE | INT | DEFAULT NULL |

通过MyBatis，所有对数据库的CRUD操作都将转换成对POJO的操作，下面是tb_user表映射的POJO对象结构：
```java
package com.valueplus.domain;

public class User {
    private Integer id;
    private String name;
    private String sex;
    private Integer age;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    public Integer getAge() {
        return age;
    }
    public void setAge(Integer age) {
        this.age = age;
    }
    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                '}';
    }
}
```
注意：类成员变量的get、set方法必须全部实现，MyBatis对数据库的字段到POJO的成员变量的映射正是通过get、set方法实现的。
对于MyBatis，现在还不能实现从数据库到java对象的映射，MyBatis通过XML文件去完成持久化类和数据库表之间的映射关系的。

MyBatis核心配置文件mybatis-config.xml的部署：
```xml
<configuration>
  <!--配置默认的环境信息，default中指定了那个数据库生效-->
  <environments default="development">
    <!--配置数据库的连接信息，id唯一指示这个数据库，可以有多个environment标签，表明有多个数据库，与environments标签的default配合使用-->
    <environment id="development">
      <!--配置事务管理器-->
      <transactionManager type="JDBC"/>
      <!--配置连接池信息-->
      <dataSource type="POOLED">
        <!--加载驱动-->
        <property name="driver" value="${driver}"/>
        <!--数据库连接信息-->
        <property name="url" value="${url}"/>
        <!--用户名和密码-->
        <property name="username" value="${username}"/>
        <property name="password" value="${password}"/>
      </dataSource>
    </environment>
  </environments>
  <!--加载映射文件-->
  <mappers>
    <mapper resource="org/mybatis/example/UserMapper.xml"/>
  </mappers>
</configuration>
```
核心配置文件定义了一些数据库连接方面的基本信息，另外，数据库表到POJO持久化对象的映射也存储在单独的XML文件中，并且在核心配置文件中指明该映射文件的路径。

映射文件的配置
映射文件存储的是对数据库的原子操作和原子操作的结果集映射，MyBatis正是通过映射文件实现数据库表到POJO持久化对象的映射的，映射文件所有内容都是基于mapper标签下实现的。
```xml
<mapper namespace="com.valueplus.dao">
     <select id="load" resultType="com.valueplus.domain.User">
        select * from tb_user where id = 1;
    </select>
</mapper>
```
其中 mapper的namespace属性值唯一指定该mapper文件，该映射文件存在一个select标签，对应一次数据库查询操作,其中id唯一指定了这次操作的名称，resultType指定了数据库表需要映射的持久化类的全路径，标签中嵌套的是SQL语句。

有了这些就具备了持久化的条件，接下来就是如何持久化。
每个基于 MyBatis 的应用都是以一个 SqlSessionFactory 的实例为中心的。SqlSessionFactory 的实例可以通过 SqlSessionFactoryBuilder 获得。而 SqlSessionFactoryBuilder 则可以从 XML 配置文件或一个预先定制的 Configuration 的实例构建出 SqlSessionFactory 的实例:
```java
public class MyBatisTest {
   public static void main(String args[]) throws Exception {
       //读取mybatis核心配置文件
       String resource = "org/mybatis/example/mybatis-config.xml";
       InputStream inputStream = Resources.getResourceAsStream(resource);
       //通过xml核心配置文件创建SqlSessionFactory类的实例
       SqlSessionFactory  sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
       //创建sqlSession实例
       SqlSession sqlSession = sqlSessionFactory.openSession();
       //创建User对象，以namespace+id的形式找到对应的SQL语句
　　   User user = sqlSession.selectOne("com.valueplus.dao.load");
       //查询完毕，完毕sqlSession实例，释放资源
　　   sqlSession.close();
   }
}
```
以上是Mybatis的简单使用，但是MyBatis的内容远不止这些，剩余的部分请自行查阅学习，包括：
1.MyBatis的结果集映射-->resultMap的使用，包括一对一，一对多，多对多的数据结果集的封装
2.MyBatis处理不同参数的处理方式，包括参数是单个基本数据类型的情况、参数是多个基本数据类型的情况、参数是map的情况、参数是POJO的情况
3.动态SQL语句查询，包括sql标签、where标签、set标签等的使用。
#### Spring 容器框架概述

Spring是IOC和AOP的容器框架。

何为IOC？
IoC（Inversion of Control）,控制反转，即把创建对象的权利交给框架,是框架的重要特征。传统的编程开发中，程序员想要获取一个类的实例，需要用new手动创建一个对象的实例，IoC的理念就是，把这步操作交给Spring框架来做，让框架控制对象的生命周期，程序员主要关注这个对象怎么用就可以，即所谓的“拿来主义”，拿过来就用，而不用自己去创建出来。那么怎么才能实现“拿来主义”呢？Spring并不智能，我们需要手动配置文件，通过XML或注解的方式将某些类标注为Spring的bean，当程序员需要一个类的实例，Spring会扫描这些bean，找到符合的bean，生成注入类的实例并返回。程序员对创建对象实例的控制权转交给容器去做，即控制反转。

何为依赖注入？
DI（Dependency Injection）依赖注入，IOC容器需要为程序提供依赖对象，即在某段程序中需要依赖某个类的实例来实现，IOC的理念是让框架来实现对类的实例化，具体的实现过程就是通过注入来实现的，简单的说，程序员在一段程序代码中只声明了一个对象而并没有手动创建实例，只有一副空壳，当别处代码调用到该段程序时，需要对这个类进行实例化操作，此时作为对象管理核心的Spring，会找到该类的描述，通过反射机制生成一个类的对象，注入到之前的空壳中。

何为AOP？
AOP（Aspect Oriented Programming），面向切面编程，AOP是OOP的延续，用于程序内部的代码完善功能。OOP一个最大的特征是多态，而继承是多态的一个重要的体现。一个类通过继承父类，既能使用父类所有的方法实现，还可以添加父类没有的属于自己特定的方法。OOP的多态是基于类这个层面的，但是有些时候，这种纵向的特性并不足以解决所有问题；比如，在一个系统中，想就用户的操作日志进行记录，对所有的用户操作都要记录生成日志，用OOP很难实现，因为用户具体的操作并不是在类的层次上进行，而是在类中某个具体的方法上进行的，而这种方法很多，并且分布在各个类中，如，用户登陆的操作、用户删除某条数据的操作，都不在一个类中实现，这种跨类的、面向方法内部的编程技巧，无法用OOP的理念解决，但这是AOP要实现的目标。

AOP并没有改变原有程序的代码结构，而是将一些额外的代码包在原有代码之前、之后等，起到对原有代码的增强修饰作用，AOP有很多专业术语：连接点、切点、增强、织入、代理、切面，关于这些术语的解释在此不再赘述，请自行查阅解决。
#### Spring + MyBatis + SpringMVC整合
Spring MVC是Spring的子项目，Spring为Spring MVC提供了良好的支持，但是Spring并没有自己的ORM框架，需要通过配置实现，MyBatis提供了spring-mybatis工具包，用于实现Spring对MyBatis的整合，用Spring框架进行整合，可以省掉原来的mybatis-config.xml的配置，程序员只需要专注于Mapper映射文件的编写即可。

配置Spring核心文件-->在WEB-INF下创建Spring XML applicationContext.xml
```xml
<!--扫描包下的java文件，所有有注解的类都会被注册为spring的bean-->
    <context:component-scan base-package="com.valueplus"/>

    <!--加载数据源参数-->
    <context:property-override location="classpath:db.properties"/>

    <!--配置c3p0数据源-->
    <bean id="dataSource" class="com.mchange.v2.c3p0.ComboPooledDataSource" />

    <!--整合mybatis和spring的bean-->
    <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean" p:dataSource-ref="dataSource">
        <property name="mapperLocations" value="classpath*:com/valueplus/mapper/*Mapper.xml"/>
    </bean>

    <!--配置接口自动注入，类名小写-->
    <bean class="org.mybatis.spring.mapper.MapperScannerConfigurer">
        <property name="basePackage" value="com.**.dao"/>
        <property name="sqlSessionFactoryBeanName" value="sqlSessionFactory"/>
    </bean>
```
db.properties文件存储的是一些数据库描述信息：
```
dataSource.driverClass=com.mysql.jdbc.Driver
dataSource.jdbcUrl=jdbc:mysql://47.104.190.227:1714/mybatis
dataSource.user=^p_dbadm
dataSource.password=Valuep_1234
dataSource.maxPoolSize=20
dataSource.maxIdleTime=1000
dataSource.minPoolSize=6
dataSource.initialPoolSize=5
```
配置数据源信息，即相当于配置了mybatis核心配置文件中的数据库描述信息，SqlSessionFactoryBean是Spring用于注入生成SqlSessionFactory实例的bean，而其中的property属性指定了mapper映射文件的位置，这样，通过Spring就实现了mybatis核心配置文件的所有配置。当想进行持久化操作时，Spring也可以通过注入方式，生成SqlSessionFactory实例。

然后在web.xml文件中添加对applicationContext.xml的引用：
```xml
<context-param>
        <param-name>contextConfigLocation</param-name>
        <param-value>/WEB-INF/applicationContext.xml,
        /WEB-INF/spring-cache.xml
        </param-value>
 </context-param>
 <listener>
        <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>
 </listener>
```
此外，还需要Spring MVC的引入和相关配置的实现，具体实现可以回顾之前的教程。至此，Spring + SpringMVC + MyBatis (SSM)的简易框架配置完毕，简单的项目结构详见GIT中的项目。
