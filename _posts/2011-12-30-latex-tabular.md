---
layout: post
title: Latex tabular
---


{% highlight latex %}
\begin{tabular}{|p{0.4\textwidth}|p{0.4\textwidth}}
{% endhighlight %}

指定表格宽度，但是无法居中

{% highlight latex %}
\renewcommand\arraystretch{1.5}
{% endhighlight %}

加上之后表格高度增加
