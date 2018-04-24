# toolsmgt-dev
This is a project focusing on "Tools Management" in manufacture workshop from Value Plus.Welcome!

Editted by Ivan Shi on Apr 17 2018 11:48
Email: shiyifan00@live.cn

## 开发环境目标
| | |
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
[GitHub官方网站](https://github.com/)
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
可利用命令行工具（如MySQL Utilities）或者图形化界面（如Navicat）连接操作数据库。
命令行工具
[MySQL Utilities下载地址](https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-utilities-1.6.5-winx64.msi)
下载安装后运行cmd，浏览到安装目录下的MySQL Server 5.5\bin\目录下，键入以下命令： 

> $ mysql -u vp_dbadm -h 47.104.190.227 -p -P 1714

"-u" 参数指定登陆用户名，"-h" 参数指定主机地址，"-p" 参数指示用需要密码登陆，"-P" 参数指定端口号。回车后输入密码即可登陆成功。
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
[Intellij IDEA官方下载地址](https://www.jetbrains.com/idea/download/#section=windows)
选择下载"Ultimate"版本，下载后安装时可选择默认插件配置即可。
安装之后[点击此处](https://blog.csdn.net/qq_35246620/article/details/79050895)网址进行破解激活
Intellij IDEA中的项目结构名称和Eclipse项目结构名称略有不同，大体的对应关系如下:
```text
+---------------+-------------+
|               |             |
| Intellij IDEA |   Eclipse   |
|               |             |
+-----------------------------+
|    Project    |  Workspace  |
+-----------------------------+
|    Module     |   Project   |
+---------------+-------------+
```
同Eclipse一样，在Intellij IDEA中，一个Project下可以包含零个或者多个Module，Module之间既可以相互独立也可以相互依赖。对于本项目在GitHub上面存放的其实是一个Module而不是Project。

将项目git clone下来之后，打开Intellij IDEA，依次点击菜单栏"File"->"New"->"Project..."，在左侧栏选择"Empty Project"，点击下方按钮"Next"。在"Project Location"一栏的右侧点击"..."按钮选择Project的目录，浏览到git clone下目录"toolsmgt-dev\"，点击toolsmgt-dev目录后确定，然后点击下方"Finish"按钮完成Project的创建。此时在git clone的目录下创建了一个空的Intellij IDEA的Project，然后我们需要把Module添加到当前的空Project中。依次点击菜单栏"File"->"New"->"Module from Existing Sources..."，浏览到toolsmgt-dev\toolsmgt\，选择toolsmgt.iml文件确定即可。此时Intellij IDEA会自动扫描该目录下的文件。在Intellij IDEA中按下"Alt + 1"组合键或者点击左边栏中的"Project"打开Project窗口，右键选择"pom.xml"文件，点击"Add as Maven Project"将该项目识别为Maven项目。此时GitHub上面的项目已经成功导入并集成到Intellij IDEA的开发环境中。
Intellij IDEA中已经集成了相关的Git, Maven的图形化界面与工具。因此，您既可以使用终端如cmd, bash也可以使用集成的图形化工具进行工作。
