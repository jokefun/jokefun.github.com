---
layout: post
title: Script to create new post
---

Add a shell script to generate new post automaticaly.

{% highlight bash %}
#!/bin/zsh

# generate the filename
d=`date +"%Y-%m-%d"`
name=$d-$1.md
echo filename: $name

# generate the post title
title=$1
if [ $2 ]
then
    title=$2
fi
echo title: $title

# create new file
touch $name

echo --- >> $name
echo layout: post >> $name
echo title: $title >> $name
echo --- >> $name

echo "new file $name created"

open -a mou $name

{% endhighlight %}

This script will accept filename and post title as parameters, then get system date and create new file with date and given title.
Template will also be added to the new file.

At last, it will use [mou](http://mouapp.com/) to open this file.

