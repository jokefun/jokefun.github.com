---
layout: post
title: "[css0to1] lesson two - floating, overflow and clearfix"
---

* float缺少overflow: hidden导致的奇怪布局很不好发现
  * 通过浏览器Inspect Elements可以看到重叠
  
* 元素的默认格式会导致margin问题

* after伪元素要记得加content: "";
* 伪元素会添加到制定的元素里面，不是外面