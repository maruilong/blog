---
title: utf-8和unicode的区别
date: 2017-07-21 10:12:32
categories : "面试题"
tags : [字符编码]
---

1.什么是Unicode。Unicode的基本目标是统一所有的编码，即它包含所有的字符集。这样只要一个系统支持Unicode，那么，就能处理这些字符集。一般Unicode有两个字节。现在的windows操作系统都是支持Unicode的。

UTF8 == Unicode Transformation Format -- 8 bit  

2.什么是UTF8呢？UTF8是一种Unicode编码，即它的编码的字符集和Unicode是一致的。但编码的方式不一样。对于英文字符来讲，UTF8的编码和一般的一样，用到一个字节。但对于中文来讲，那么要用三个字节表示。

<!-- more -->

UTF8和Unicode的缺点是在处理查找、搜索等问题时，好像算法上比较复杂，效率不高.

**Unicode制订了横竖撇点捺,中国人用这些组合成了中文,日本人用这些组合成了日文**

``` java
package com.itmasir.unicode;

import java.io.UnsupportedEncodingException;

/**
 * 
 * @ClassName: UnicodeDemo
 * @Description:
 * @author shinian
 * @date 2017年7月21日 上午10:25:36
 * 
 */
public class UnicodeDemo {

    /**
     * UTF-8和GBK使用的都是Unicode字符集,但是他们的编码方式不同
     */
    private static final String UTF8 = "utf-8";
    private static final String GBK = "GBK";

    public static void main(String[] args) {
        String text = new String("马");
        byte[] bytes = null;
        try {
            bytes = text.getBytes(UTF8);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        for (byte b : bytes) {
            System.out.println(b);
        }
    }
}

```







