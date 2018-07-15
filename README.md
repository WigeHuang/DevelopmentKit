# DevelopmentKit
  开发笔记
 intellij IDEA
1.插件Lombok的简介
Lombok是一款Java开发插件，使得Java开发者可以通过其定义的一些注解来消除业务工程中冗长和繁琐的代码，
尤其对于简单的Java模型对象（POJO）。
在开发环境中使用Lombok插件后，Java开发人员可以节省出重复构建，诸如hashCode和equals这样的方法以及各种业务对象模型的accessor和ToString等方法的大量时间。
对于这些方法，它能够在编译源代码期间自动帮我们生成这些方法，并没有如反射那样降低程序的性能。

2.在使用lombok注解的时候记得要导入lombok.jar包到工程，如果使用的是Maven的工程项目的话，要在其pom.xml中添加依赖如下：
<dependency>
    <groupId>org.projectlombok</groupId>
    <artifactId>lombok</artifactId>
    <version>1.16.8</version>
    <scope>provided</scope>
</dependency>
