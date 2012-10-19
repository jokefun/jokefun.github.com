---
layout: post
title: 一些配置
---

## MacVim

{% highlight bash %}
set nu sts=4 ts=4 sw=4 et si ai
set ruler
set hlsearch
syntax on
filetype plugin on
{% endhighlight %}

Meaning of the settings:
ts=tabstop sts=softtabstop sw=shiftwidth et=expandtab, si=smart indent, ai=auto indent

## Git

Git-core is included in the xcode. PATH=/Application/Xcode.app/Contents/Developer/usr/libexec/git-core.

{% highlight bash %}
git config --global user.name "Your Name Here"
git config --global user.email "your_email@youremail.com"
{% endhighlight %}

Use credential-osxkeychain to remember password.

{% highlight bash %}
curl -s -O http://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain
chmod u+x git-credential-osxkeychain
sudo mv git-credential-osxkeychain /path/to/git
git config --global credential.helper osxkeychain
{% endhighlight %}

Celebrate!

