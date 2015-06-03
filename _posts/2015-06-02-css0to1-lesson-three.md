---
layout: post
title: "[css0to1] lesson three - Block Formatting Context and border-box"
---

* 元素加overflow:hidden构成Block Formatting Context
  * http://yuiblog.com/blog/2010/05/19/css-101-block-formatting-contexts/
  * 把它变成一个独立的block上下文，方方正正的，能包住自己的孩子 or 不收外面的东西干扰
    * 包括float和防止margin collapsing
* border-box在需要的时候非常有用
  * padding和border算在width里面