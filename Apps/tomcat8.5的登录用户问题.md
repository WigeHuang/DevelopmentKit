# Tomcat Manager App--403 Access Denied You are not authorized to view this page

 报错截图：Tomcat Manager App--403 Access Denied You are not authorized to view this page

![](D:\git\DevelopmentKit\Apps\1..jpg)

## 1、访问 http://localhost:8080/，点击 【manager app】，提示输入用户名和密码，admin/admin后报错。 

## 2、解决办法：重置Tomcat8.5管理员的用户名和密码

打开%CATALINA_HOME%\conf\tomcat-users.xml文件，在tomcat-users标签中添加如下内容：

```xml
<tomcat-users xmlns="http://tomcat.apache.org/xml" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xsi:schemaLocation="http://tomcat.apache.org/xml tomcat-users.xsd" 
version="1.0"> 
  <role rolename="manager"/>  
  <role rolename="manager-gui"/>  
  <role rolename="admin"/>  
  <role rolename="admin-gui"/>  
  <role rolename="manager-script"/>  
  <role rolename="manager-jmx"/>  
  <role rolename="manager-status"/>  
  <user username="admin" password="admin" roles="admin-gui,admin,manager-gui,manager,manager-script,manager-jmx,manager-status"/> 
</tomcat-users>
```

## 3、然后重启tomcat，重新访问manager app页面，如果此时仍然出现403 Access Denied错误，那么就是访问的ip地受到了限制，

我们打开/webapps/manager/META-INF/目录下context.xml文件，不是conf/目录下的context.xml文件，一定不要搞错了!

我们将里面的内容**注释掉或者修改**为 ：

```xml
<Valve className="org.apache.catalina.valves.RemoteAddrValve"
allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1|\d+\.\d+\.\d+\.\d+" />
```



## 4、保存，然后重启tomcat，重新访问manager app页面，OK，问题得到解决。