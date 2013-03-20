---
layout: post
title: Regular-Expression-To-Match-URL
---

    (((http|ftp|https)://)
    (([a-zA-Z0-9\\.-]+\\.[a-zA-Z]{2,6})|
    ([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}))
    (:[0-9]{1,4})*(/[a-zA-Z0-9\\&%./-~-]*)?)
    
from: <http://zongxuan.us/blog/2012/12/19/one-regex-expression-for-urls/>