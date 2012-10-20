---
layout: post
title: windows设置调节音量按钮
---

F8增加音量，F9减小音量

{% highlight batchfile %}
Windows Registry Editor Version 5.00
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
"Scancode Map"=hex:00,00,00,00,00,00,00,00,03,00,00,00,30,E0,42,00,2E,E0,43,00,00,00,00,00
{% endhighlight %}
