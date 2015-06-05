---
layout: post
title: "[css0to1] lesson five - media query"
---

* media-query
  * 对不同的显示设置不同的属性

{% highlight css %}

@media (max-width : 500px) {
  .change-color {
    background: green;
  }
}

/* Large Devices, Wide Screens */
@media only screen and (max-width : 1200px) {}

/* Medium Devices, Desktops */
@media only screen and (max-width : 992px) {}

/* Small Devices, Tablets */
@media only screen and (max-width : 768px) {}

/* Extra Small Devices, Phones */
@media only screen and (max-width : 480px) {}

{% endhighlight %}