---
title: Centos7下JDK安装
date: 2017-07-19 16:36:36
categories : "linux"
tags : 
 	- linux
        - jdk
---


# Centos7下安装JDK

## 准备JDK

JDK下载链接：http://pan.baidu.com/s/1mhQ2KeG 密码：7v2w

## 将JDK上传到服务器上

SSH工具和FTP工具推荐使用:[XSHELL](https://www.netsarang.com/xshell_download.html)和[XFTP](https://www.netsarang.com/products/xfp_overview.html)

![](http://osluooofp.bkt.clouddn.com/17-7-19/95386738.jpg)



<!-- more -->

## 使用rpm命令安装JDK

服务器版本请使用64位!

``` shell
rpm -ivh jdk-8u77-linux-x64.rpm
```

![](http://osluooofp.bkt.clouddn.com/17-7-19/20838230.jpg)

安装之后的位置是/usr/java/jdk1.8.0_77

## 配置环境变量

``` shell
vi /etc/profile
```

在文件末尾加上

``` shell
JAVA_HOME=/usr/java/jdk1.8.0_77
JRE_HOME=/usr/java/jdk1.8.0_77/jre
PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
CLASSPATH=:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
```

刷新配置

``` shell
source /etc/profile
```

查看是否成功

``` shell
echo $PATH
java -version
```

![](http://osluooofp.bkt.clouddn.com/17-7-19/32117699.jpg)

到此JDK安装成功

我的GITHUB:[马睿隆](https://github.com/maruilong)