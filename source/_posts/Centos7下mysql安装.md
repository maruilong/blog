---
title: Centos7下JDK安装
date: 2017-07-19 16:36:36
categories : "linux"
tags : [linux,mysql]
        
---

## 准备MYSQL

mysql数据源下载链接：http://pan.baidu.com/s/1cIpWaq 密码：zxgo



## 将mysql上传到服务器上



SSH工具和FTP工具推荐使用:[XSHELL](https://www.netsarang.com/xshell_download.html)和[XFTP](https://www.netsarang.com/products/xfp_overview.html)



![](http://osluooofp.bkt.clouddn.com/17-7-19/21202150.jpg)

<!-- more -->

## 使用rpm命令安装mysql数据源



服务器版本请使用64位!



``` shell
rpm -ivh mysql57-community-release-el7-11.noarch.rpm 
```


![](http://osluooofp.bkt.clouddn.com/17-7-19/13897836.jpg)



之后使用yum命令安装mysql



``` shell
 yum install mysql-community-server
```



![](http://osluooofp.bkt.clouddn.com/17-7-20/33068189.jpg)



安装成功,启动mysql

``` shell
service mysqld start
```



查看状态

``` shell
service mysqld status
```

![](http://osluooofp.bkt.clouddn.com/17-7-20/67500882.jpg)



Mysql5.7默认安装之后root是有密码的



为了加强安全性，MySQL5.7为root用户随机生成了一个密码，在error log中，关于error log的位置，如果安装的是RPM包，则默认是/var/log/mysqld.log。 
只有启动过一次MySQL才可以查看临时密码



``` shell
grep 'temporary password' /var/log/mysqld.log
```



![](http://osluooofp.bkt.clouddn.com/17-7-20/59556293.jpg)



复制密码登录mysql



``` shell
mysql -u root -p
```



![](http://osluooofp.bkt.clouddn.com/17-7-20/44389458.jpg)



用该密码登录到服务端后，必须马上修改密码

``` mysql
ALTER USER 'root'@'localhost' IDENTIFIED BY '你的密码';
```



密码过于简单不让修改解决方案

``` mysql
set global validate_password_policy=0;
set global validate_password_length=1;

```



退出 使用新密码重新登录



授权其他机器登陆

``` mysql
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '授权登录密码' WITH GRANT OPTION;
```



使配置生效

``` my
FLUSH  PRIVILEGES;
```



重启mysql

``` shell
service mysqld restart
```



到此 mysql安装完毕



我的GITHUB:[马睿隆](https://github.com/maruilong)