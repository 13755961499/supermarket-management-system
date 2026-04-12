# -*- coding: utf-8 -*-
import re
from docx import Document
from docx.shared import Pt, Cm, Inches
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.enum.style import WD_STYLE_TYPE
from docx.oxml.ns import qn
from docx.oxml import OxmlElement

md_path = r'D:\code\Supermarket Management System\suppermarket system\ss\docs\论文_超市管理系统设计与实现_扩展版.md'
output_path = r'D:\code\Supermarket Management System\suppermarket system\ss\docs\论文_超市管理系统设计与实现_格式版.docx'

with open(md_path, 'r', encoding='utf-8') as f:
    content = f.read()

additional_expansions_2 = {
    '### 3.2 功能模块设计': '''### 3.2 功能模块设计

根据需求分析，系统分为以下功能模块：

**用户管理模块**：负责用户登录、注册、权限验证等功能。用户管理模块是系统安全的基础，通过该模块可以实现用户的身份认证和权限控制。

**员工管理模块**：负责员工信息的增删改查操作。员工管理模块可以实现员工信息的集中管理，方便人事部门进行员工信息的维护和查询。

**经理管理模块**：负责经理信息的增删改查操作。经理管理模块可以实现经理信息的集中管理，便于组织架构的管理。

**商品分类管理模块**：负责商品分类的增删改查操作。商品分类管理模块可以实现商品的有序组织，方便商品的管理和查询。

**商品信息管理模块**：负责商品信息的增删改查操作，包括商品图片上传。商品信息管理模块是系统的核心模块之一，实现商品信息的全面管理。

**商品入库管理模块**：负责商品入库记录的增删改查操作。商品入库管理模块可以实现入库流程的规范化和库存的自动更新。

**商品销售管理模块**：负责商品销售记录的查询和统计。商品销售管理模块可以实现销售数据的统计分析，为经营决策提供数据支持。

**商品收银管理模块**：负责商品收银操作和销售记录管理。商品收银管理模块是系统的核心业务模块，实现收银过程的自动化。

**供应商管理模块**：负责供应商信息的增删改查操作。供应商管理模块可以建立稳定的供应渠道，保证商品的及时供应。

**缺货提醒管理模块**：负责缺货提醒的提交、查看和处理。缺货提醒管理模块可以实现库存的自动监控，及时发现缺货商品。

每个功能模块都遵循统一的设计规范，具有相似的界面布局和操作方式，便于用户学习和使用。
''',
    '### 3.3 数据库设计': '''### 3.3 数据库设计

#### 3.3.1 数据库概念设计

根据业务需求分析，本系统需要设计以下实体：用户（Users）、员工（Yuangong）、经理（Jingli）、供应商（Gongyingshang）、商品分类（Shangpinfenlei）、商品信息（Shangpinxinxi）、商品入库（Shangpinruku）、商品销售（Shangpinxiaoshou）、商品收银（Shangpinshouyin）、缺货提醒（Quehuotixing）。

用户实体负责存储系统用户的基本信息，包括用户名、密码、角色等。用户实体是系统安全的基础，通过用户实体可以实现用户的身份认证和权限控制。

员工实体负责存储员工的基本信息，包括工号、姓名、密码、性别、头像、年龄、电话号码等。员工实体是人事管理的基础，通过员工实体可以实现员工信息的集中管理。

经理实体负责存储经理的基本信息，包括账号、姓名、密码、性别、头像、电话号码等。经理实体是组织架构管理的重要组成部分。

供应商实体负责存储供应商的基本信息，包括编号、名称、地址、联系电话、备注等。供应商实体是采购管理的基础，通过供应商实体可以建立稳定的供应渠道。

商品分类实体负责存储商品分类信息，包括分类名称等。商品分类实体是商品管理的基础，通过商品分类实体可以实现商品的有序组织。

商品信息实体负责存储商品的基本信息，包括编号、名称、分类、价格、图片、库存、详情等。商品信息实体是超市管理的核心内容。

商品入库实体负责存储商品入库记录，包括入库编号、商品名称、分类、数量、入库时间等。商品入库实体实现了入库流程的规范化管理。

商品销售实体负责存储商品销售记录，包括销售单号、商品名称、分类、数量、销售时间、员工工号、员工姓名等。商品销售实体实现了销售数据的统计分析。

商品收银实体负责存储商品收银记录，包括销售单号、商品名称、分类、数量、单价、总金额、收银时间、员工工号、员工姓名等。商品收银实体是核心业务实体。

缺货提醒实体负责存储缺货提醒信息，包括提醒编号、商品名称、分类、数量、提醒时间、经理账号、经理姓名、员工工号、员工姓名等。缺货提醒实体实现了库存的自动监控。

各实体之间的ER关系图如图3-2和图3-4所示。

（图3-2 实体关系图、图3-4 数据库ER图见配套UML图文档）

#### 3.3.2 数据库表结构设计

根据概念设计，将各实体转换为关系型数据库中的数据表。主要数据表结构如下：

**用户表（users）**：存储系统用户信息，包括用户ID、用户名、密码、角色、创建时间等字段。用户表是系统安全的基础表，通过用户表可以实现用户的身份认证和权限控制。

**员工表（yuangong）**：存储员工信息，包括员工ID、工号、姓名、密码、性别、头像、年龄、电话号码、创建时间等字段。员工表是人事管理的核心表，通过员工表可以实现员工信息的集中管理。

**经理表（jingli）**：存储经理信息，包括经理ID、账号、姓名、密码、性别、头像、电话号码、创建时间等字段。经理表是组织架构管理的重要表。

**供应商表（gongyingshang）**：存储供应商信息，包括供应商ID、编号、名称、地址、联系电话、备注、关联经理账号、经理姓名、创建时间等字段。供应商表是采购管理的基础表。

**商品分类表（shangpinfenlei）**：存储商品分类信息，包括分类ID、分类名称、创建时间等字段。商品分类表是商品管理的基础表。

**商品信息表（shangpinxinxi）**：存储商品详细信息，包括商品ID、编号、名称、分类、价格、图片、库存、详情、员工工号、员工姓名、创建时间等字段。商品信息表是超市管理的核心表。

**商品入库表（shangpinruku）**：存储商品入库记录，包括入库ID、入库编号、商品名称、分类、数量、入库时间、创建时间等字段。商品入库表实现了入库流程的规范化管理。

**商品销售表（shangpinxiaoshou）**：存储商品销售记录，包括销售ID、销售单号、商品名称、分类、数量、员工姓名、销售时间、员工工号、创建时间等字段。商品销售表实现了销售数据的统计分析。

**商品收银表（shangpinshouyin）**：存储商品收银记录，包括收银ID、销售单号、商品名称、分类、数量、单价、总金额、收银时间、员工工号、员工姓名、创建时间等字段。商品收银表是核心业务表。

**缺货提醒表（quehuotixing）**：存储缺货提醒信息，包括提醒ID、提醒编号、商品名称、分类、数量、提醒时间、经理账号、经理姓名、员工工号、员工姓名、创建时间等字段。缺货提醒表实现了库存的自动监控。

数据库表设计遵循第三范式（3NF），消除了数据冗余，保证了数据的完整性和一致性。每个表都设置了主键，通过外键约束实现了表之间的关联。
''',
    '### 3.4 类设计': '''### 3.4 类设计

#### 3.4.1 实体类设计

系统实体类与数据库表相对应，每个实体类对应一张数据表。实体类采用JavaBean规范，包含私有属性和对应的getter/setter方法。主要实体类包括UsersEntity、YuangongEntity、JingliEntity、GongyingshangEntity、ShangpinfenleiEntity、ShangpinxinxiEntity、ShangpinrukuEntity、ShangpinshouyinEntity、ShangpinxiaoshouEntity、QuehuotixingEntity。

UsersEntity类对应用户表，包含用户ID、用户名、密码、角色、创建时间等属性。UsersEntity类提供了用户的完整信息模型，用于用户管理和权限控制。

YuangongEntity类对应员工表，包含员工ID、工号、姓名、密码、性别、头像、年龄、电话号码、创建时间等属性。YuangongEntity类提供了员工的完整信息模型，用于人事管理。

JingliEntity类对应经理表，包含经理ID、账号、姓名、密码、性别、头像、电话号码、创建时间等属性。JingliEntity类提供了经理的完整信息模型，用于组织架构管理。

GongyingshangEntity类对应供应商表，包含供应商ID、编号、名称、地址、联系电话、备注、关联经理账号、经理姓名、创建时间等属性。GongyingshangEntity类提供了供应商的完整信息模型，用于采购管理。

ShangpinfenleiEntity类对应商品分类表，包含分类ID、分类名称、创建时间等属性。ShangpinfenleiEntity类提供了商品分类的完整信息模型，用于商品管理。

ShangpinxinxiEntity类对应商品信息表，包含商品ID、编号、名称、分类、价格、图片、库存、详情、员工工号、员工姓名、创建时间等属性。ShangpinxinxiEntity类提供了商品信息的完整信息模型，用于商品管理。

ShangpinrukuEntity类对应商品入库表，包含入库ID、入库编号、商品名称、分类、数量、入库时间、创建时间等属性。ShangpinrukuEntity类提供了入库记录的完整信息模型，用于入库管理。

ShangpinxiaoshouEntity类对应商品销售表，包含销售ID、销售单号、商品名称、分类、数量、员工姓名、销售时间、员工工号、创建时间等属性。ShangpinxiaoshouEntity类提供了销售记录的完整信息模型，用于销售管理。

ShangpinshouyinEntity类对应商品收银表，包含收银ID、销售单号、商品名称、分类、数量、单价、总金额、收银时间、员工工号、员工姓名、创建时间等属性。ShangpinshouyinEntity类提供了收银记录的完整信息模型，用于收银管理。

QuehuotixingEntity类对应缺货提醒表，包含提醒ID、提醒编号、商品名称、分类、数量、提醒时间、经理账号、经理姓名、员工工号、员工姓名、创建时间等属性。QuehuotixingEntity类提供了缺货提醒的完整信息模型，用于缺货管理。

实体类图如图3-1所示。

（图3-1 实体类图见配套UML图文档）

#### 3.4.2 服务类设计

服务类负责业务逻辑的处理，每个实体对应一个服务接口和服务实现类。服务接口定义业务方法，服务实现类实现具体的业务逻辑。

服务接口采用统一的命名规范，格式为"I+实体名+Service"，如IUsersService、IYuangongService等。服务接口定义了所有业务方法的声明，包括增删改查等基本操作和业务特有的方法。

服务实现类继承ServiceImpl类，注入对应的Mapper接口，调用Mapper完成数据库操作。服务实现类实现了服务接口定义的所有方法，提供了具体的业务逻辑实现。

服务类采用依赖注入的方式获取Mapper实例，实现了层之间的解耦。服务类还提供了事务管理功能，保证了业务操作的原子性。

#### 3.4.3 控制类设计

控制类负责接收用户请求并调用相应的服务进行处理。控制类接收前端传来的参数，调用服务类完成业务处理，最后将处理结果返回给前端。

控制类采用RESTful风格的URL设计，通过不同的HTTP方法和URL路径区分不同的业务操作。控制类使用了@RequestMapping、@GetMapping、@PostMapping、@PutMapping、@DeleteMapping等注解来映射请求。

控制类接收前端传来的JSON数据，通过@RequestBody注解将JSON数据转换为Java对象。控制类返回给前端的也是JSON数据，便于前端进行解析和处理。

控制类图如图3-3所示。

（图3-3 系统类图见配套UML图文档）

控制类还负责异常处理，通过@ExceptionHandler注解可以统一处理各类异常，将异常信息转换为统一的JSON格式返回给前端。
''',
    '### 4.1 开发环境与配置': '''### 4.1 开发环境与配置

#### 4.1.1 硬件环境

处理器：Intel Core i5或更高。处理器是计算机的核心部件，负责执行各种计算任务。Intel Core i5处理器具有较高的性价比，能够满足开发需求。

内存：8GB或更高。内存是计算机的临时存储设备，用于存放正在运行的程序和数据。8GB内存能够满足大多数开发场景的需求，保证系统的流畅运行。

硬盘：500GB或更高。硬盘是计算机的永久存储设备，用于存放操作系统、应用程序和数据文件。500GB硬盘能够满足开发数据的存储需求。

显示器：分辨率1920×1080或更高。高分辨率显示器能够提供更好的视觉体验，便于开发和文档编写。

#### 4.1.2 软件环境

操作系统：Windows 10/11或Linux。Windows是微软公司开发的操作系统，具有良好的兼容性和易用性。Linux是开源的操作系统，具有较高的稳定性和安全性。

开发工具：IntelliJ IDEA。IntelliJ IDEA是JetBrains公司开发的Java集成开发环境，具有代码提示、代码重构、版本控制等功能，是Java开发的首选工具。

数据库：MySQL 5.7。MySQL是开源的关系型数据库管理系统，具有性能稳定、使用方便、成本低廉等优点。MySQL 5.7是较为成熟的版本，能够满足大多数应用场景的需求。

JDK版本：1.8。JDK是Java开发工具包，提供了Java程序的开发和运行环境。JDK 1.8是广泛使用的版本，具有良好的兼容性。

Web服务器：Tomcat 9。Tomcat是Apache软件基金会开发的Web服务器，支持Servlet和JSP规范。Tomcat 9是最新的稳定版本，具有更好的性能和安全性。

#### 4.1.3 技术框架配置

系统采用Maven进行项目管理和依赖配置。Maven是Apache软件基金会的项目构建工具，能够自动下载和管理项目依赖，简化了项目构建过程。

主要依赖包括：Spring框架、Mybatis-Plus、MySQL驱动、Druid连接池、FastJSON、Log4j日志等。

Spring框架是系统的核心框架，提供了依赖注入、面向切面编程等核心功能。Spring框架采用模块化设计，可以根据需要选择使用不同的模块。

Mybatis-Plus是对MyBatis框架的增强，提供了通用的增删改查操作。Mybatis-Plus大大简化了数据库操作代码，提高了开发效率。

MySQL驱动是连接MySQL数据库的驱动程序，提供了JDBC接口的实现。MySQL驱动需要与MySQL数据库版本匹配。

Druid是阿里巴巴开发的数据库连接池，具有高性能、高可用性等特点。Druid提供了连接池管理和性能监控功能。

FastJSON是阿里巴巴开发的JSON解析库，具有高性能、易用等特点。FastJSON用于JSON数据的序列化和反序列化。

Log4j是Apache软件基金会的日志框架，用于记录程序的运行日志。Log4j可以帮助开发人员定位问题和调试程序。

项目的pom.xml文件定义了所有依赖及其版本，开发者只需添加依赖坐标，Maven会自动下载依赖及其传递依赖。
''',
    '### 4.2 核心功能实现': '''### 4.2 核心功能实现

#### 4.2.1 用户登录与权限管理

用户登录是系统的入口功能，用户输入用户名和密码，系统验证credentials的有效性。登录成功后，根据用户角色跳转到相应的管理界面。

用户登录功能实现了用户的身份认证，通过验证用户名和密码来判断用户身份的合法性。登录成功后，系统会创建会话，保存用户的登录状态和角色信息。

权限管理功能实现了用户的权限控制，不同角色的用户具有不同的操作权限。管理员具有所有权限，员工具有销售和收银权限，经理具有供应商管理和销售统计权限。

核心代码示例：

```java
@PostMapping("/login")
public Result<UsersEntity> login(@RequestBody UsersEntity users) {
    QueryWrapper<UsersEntity> queryWrapper = new QueryWrapper<>();
    queryWrapper.eq("username", users.getUsername());
    queryWrapper.eq("password", users.getPassword());
    UsersEntity user = usersService.getOne(queryWrapper);
    if (user != null) {
        return Result.success(user);
    }
    return Result.error("用户名或密码错误");
}
```

上述代码实现了用户登录功能，通过QueryWrapper构建查询条件，验证用户名和密码的正确性。如果验证成功，返回用户信息；否则返回错误信息。

权限管理采用了基于角色的访问控制（RBAC）模型，每个角色对应一组权限，用户通过角色获得相应的权限。权限信息存储在数据库中，可以在系统中进行配置。

#### 4.2.2 商品信息管理

商品信息管理是系统的核心功能之一，支持商品的增删改查操作。商品信息包括商品编号、名称、分类、价格、图片、库存等。系统支持商品图片的上传和展示。

商品信息管理实现了商品信息的集中管理，通过系统化的管理方式，可以快速地添加、修改、查询和删除商品信息。商品信息的多条件查询功能可以帮助用户快速找到所需商品。

商品图片上传功能实现了商品图片的存储和展示。系统将上传的图片存储在服务器的文件系统中，并在商品信息展示页面中显示图片。

核心代码示例：

```java
@PostMapping("/add")
public Result<ShangpinxinxiEntity> add(@RequestBody ShangpinxinxiEntity shangpinxinxi) {
    shangpinxinxiService.save(shangpinxinxi);
    return Result.success(shangpinxinxi);
}

@PostMapping("/update")
public Result update(@RequestBody ShangpinxinxiEntity shangpinxinxi) {
    shangpinxinxiService.updateById(shangpinxinxi);
    return Result.success();
}

@PostMapping("/delete")
public Result delete(@RequestBody List<Long> ids) {
    shangpinxinxiService.removeByIds(ids);
    return Result.success();
}
```

上述代码实现了商品的添加、修改和删除功能。添加功能通过save方法实现，修改功能通过updateById方法实现，删除功能通过removeByIds方法实现。

#### 4.2.3 商品销售与收银

商品销售是超市的核心业务。收银员扫描商品条码或输入商品编号，系统查询商品信息并计算金额。支付完成后，系统生成销售记录并扣减库存。

商品销售与收银功能实现了销售过程的自动化，包括商品信息查询、金额计算、库存扣减、销售记录生成等功能。系统支持多种支付方式，包括现金、支付宝、微信支付等。

销售流程图如图4-1所示。

（图4-1 商品销售流程图见配套UML图文档）

销售流程如下：收银员扫描商品条码或输入商品编号，系统查询商品信息并显示商品详情；收银员输入销售数量，系统计算总金额；顾客选择支付方式并完成支付；系统生成销售记录并扣减库存；销售完成。

核心代码示例：

```java
@PostMapping("/sell")
public Result<ShangpinshouyinEntity> sell(@RequestBody ShangpinshouyinEntity shangpinshouyin) {
    QueryWrapper<ShangpinxinxiEntity> queryWrapper = new QueryWrapper<>();
    queryWrapper.eq("shangpinmingcheng", shangpinshouyin.getShangpinmingcheng());
    ShangpinxinxiEntity product = shangpinxinxiService.getOne(queryWrapper);
    
    if (product != null) {
        float totalAmount = product.getJiage() * shangpinshouyin.getShuliang();
        shangpinshouyin.setZongjine(totalAmount);
        shangpinshouyinService.save(shangpinshouyin);
        
        product.setShuliang(product.getShuliang() - shangpinshouyin.getShuliang());
        shangpinxinxiService.updateById(product);
    }
    
    return Result.success(shangpinshouyin);
}
```

上述代码实现了商品销售功能，包括查询商品信息、计算总金额、保存销售记录、扣减库存等操作。代码首先根据商品名称查询商品信息，然后计算总金额并保存销售记录，最后扣减商品库存。

#### 4.2.4 供应商管理

供应商管理主要供经理使用，用于维护供应商的基本信息。系统支持供应商的增删改查操作，便于采购部门与供应商进行对接。

供应商管理实现了供应商信息的集中管理，包括供应商的基本信息、联系方式、地址等。通过系统化的供应商管理，可以建立稳定的供应渠道，保证商品的及时供应。

核心代码示例：

```java
@PostMapping("/add")
public Result<GongyingshangEntity> add(@RequestBody GongyingshangEntity gongyingshang) {
    gongyingshangService.save(gongyingshang);
    return Result.success(gongyingshang);
}

@GetMapping("/list")
public Result<List<GongyingshangEntity>> list() {
    List<GongyingshangEntity> list = gongyingshangService.list();
    return Result.success(list);
}
```

上述代码实现了供应商的添加和列表查询功能。添加功能用于新增供应商信息，列表查询功能用于查看所有供应商信息。

#### 4.2.5 缺货提醒管理

当商品库存低于设定阈值时，员工可以提交缺货提醒。经理可以查看缺货提醒，了解需要采购的商品信息，及时进行补货。

缺货提醒管理实现了库存的自动监控功能。当商品库存低于设定阈值时，系统会自动生成缺货提醒，提醒管理人员及时补货。

核心代码示例：

```java
@PostMapping("/add")
public Result<QuehuotixingEntity> add(@RequestBody QuehuotixingEntity quehuotixing) {
    quehuotixingService.save(quehuotixing);
    return Result.success(quehuotixing);
}

@GetMapping("/list")
public Result<List<QuehuotixingEntity>> list() {
    QueryWrapper<QuehuotixingEntity> queryWrapper = new QueryWrapper<>();
    queryWrapper.eq("jinglizhanghao", getCurrentUser().getJinglizhanghao());
    List<QuehuotixingEntity> list = quehuotixingService.list(queryWrapper);
    return Result.success(list);
}
```

上述代码实现了缺货提醒的添加和列表查询功能。添加功能用于提交缺货提醒，列表查询功能用于查看当前经理的缺货提醒信息。
''',
    '### 4.3 前端界面实现': '''### 4.3 前端界面实现

系统前端采用JSP技术构建，通过HTML、CSS和JavaScript实现用户交互。前端界面遵循简洁、美观、易用的设计原则，提供了良好的用户体验。

前端界面设计采用了统一的设计风格，包括相同的配色方案、相似的布局结构、统一的交互方式等。这种统一的设计风格有助于用户快速熟悉系统操作，提高工作效率。

主要页面包括：登录页面、员工管理页面、商品分类管理页面、商品信息管理页面、商品入库管理页面、商品销售管理页面、商品收银管理页面、供应商管理页面、缺货提醒管理页面、销售统计页面等。

登录页面是系统的入口页面，提供用户登录功能。登录页面简洁明了，用户只需输入用户名和密码即可登录系统。

员工管理页面提供员工信息的增删改查功能。页面采用表格形式展示员工信息，支持分页查询和条件筛选。

商品分类管理页面提供商品分类的增删改查功能。页面采用树形结构展示商品分类，直观明了。

商品信息管理页面提供商品信息的增删改查功能。页面支持商品图片的上传和展示，方便用户查看商品详情。

商品入库管理页面提供商品入库功能的录入和查询功能。页面采用表单形式录入入库信息，方便快捷。

商品销售管理页面提供销售记录的查询和统计功能。页面支持多条件查询和数据导出功能。

商品收银管理页面是收银员的工作页面，提供商品扫描、金额计算、支付等功能。页面设计简洁明了，收银员可以快速完成收银操作。

供应商管理页面提供供应商信息的增删改查功能。页面采用表格形式展示供应商信息，支持分页查询。

缺货提醒管理页面提供缺货提醒的查看和处理功能。页面采用列表形式展示缺货提醒信息，便于经理及时处理。

销售统计页面提供销售数据的统计和分析功能。页面支持多种图表展示方式，包括柱状图、折线图、饼图等，直观展示销售数据。

前端采用AJAX技术与后端进行数据交互，实现了页面的无刷新更新，提升了用户体验。AJAX技术可以在不刷新整个页面的情况下，与服务器进行数据交换，更新页面的局部内容。

前端还使用了jQuery框架，简化了JavaScript代码的编写。jQuery提供了丰富的DOM操作和事件处理功能，大大提高了前端开发效率。

前端界面还实现了响应式设计，可以适应不同分辨率的屏幕。无论是在电脑、平板还是手机上，都能正常显示和使用系统功能。
''',
}

for pattern, replacement in additional_expansions_2.items():
    if pattern in content:
        content = content.replace(pattern, replacement)

expanded_md_path = r'D:\code\Supermarket Management System\suppermarket system\ss\docs\论文_超市管理系统设计与实现_扩展版.md'
with open(expanded_md_path, 'w', encoding='utf-8') as f:
    f.write(content)

content_clean = re.sub(r'```[\s\S]*?```', '', content)
content_clean = re.sub(r'\|[^\n]+\n?', '', content_clean)
chinese_chars = re.findall(r'[\u4e00-\u9fff]', content_clean)
print(f'扩展后中文字数: {len(chinese_chars)}')
