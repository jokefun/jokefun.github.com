---
layout: post
title: latex各种间距
---

只适用于CJK和xeCJK

{% highlight latex %}
\renewcommand{\CJKglue}{\hskip 宽度}
{% endhighlight %}

最好设置为弹性长度比如

{% highlight latex %}
\renewcommand{\CJKglue}{\hskip 1pt plus 0.08\baselineskip}
{% endhighlight %}

## 行间距

{% highlight latex %}
\linespread{因子}
{% endhighlight %}

或者

{% highlight latex %}
\renewcommand{\baselinestretch}{因子}
{% endhighlight %}

比如

{% highlight latex %}
\linespread{1.5}
{% endhighlight %}

或者

{% highlight latex %}
\renewcommand{\baselinestretch}{1.5}
{% endhighlight %}

## 段间距

设置\parskip的值，

比如

{% highlight latex %}
\setlength{\parskip}{0.5\baselineskip}
{% endhighlight %}

## 首行缩进

如果默认首行不缩进，则使用indentfirst宏包

{% highlight latex %}
\usepackage{indentfirst}
{% endhighlight %}

指定某段首行缩进，在段首加

{% highlight latex %}
\indent
{% endhighlight %}

指定某段首行不缩进，在段首加

{% highlight latex %}
\noindent
{% endhighlight %}

### 设置缩进量

{% highlight latex %}
\setlength\parindent{2em}
{% endhighlight %}

### 悬挂缩进

在要悬挂缩进的段落前加上

{% highlight latex %}
\noindent
\hangafter=1
\setlength{\hangindent}{2em}
{% endhighlight %}

分别是:

 * 取消首行缩进；
 * 设置从第１行之后开始悬挂缩进；
 * 设置悬挂缩进量
 * 居中、左对齐、右对齐
