---
layout: post
title: Host-static-file-on-jetty7
---

We need to create war file.
And using **DefaultServlet**.

Create web.xml file:

    <servlet>
    <servlet-name>staticAssets</servlet-name>
    <servlet-class>org.eclipse.jetty.servlet.DefaultServlet</servlet-class>
    </servlet>
    <servlet-mapping>
      <servlet-name>staticAssets</servlet-name>
      <url-pattern>/static/*</url-pattern>
    </servlet-mapping>
    
Then place static inside the static directory.

    myapp.war:
      static/
        index.html
      WEB-INF/
        classes/
          classes
        web.xml

Use `"jar -cvf file.war *"` to create war file.
