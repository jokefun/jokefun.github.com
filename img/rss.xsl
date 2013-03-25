<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  <title>RSS 2.0 aggregater</title>
  <meta name="author" content="Menghan Li"/>
  <style type="text/css">
  table
  {
    margin:100;
    border-collapse:collapse;
  }
  table,th, td
  {
    border: 1px solid black;
  }
  td{padding:20;}
  th
  {
    padding: 20;
    background-color:#696868;
    color:white;
  }
  h1 {margin: 100;}
  h3 {margin-bottom: 10;}
  p {margin: 40;}
  </style>
  </head>
  <body>
  <h1>test on xsl</h1>
  <table>
    <tr>
      <th>Title</th>
      <th>Item</th>
    </tr>
    <xsl:for-each select="//rss/channel">
    <tr>
      <td>
      <a>
        <xsl:attribute name="href">
        <xsl:value-of select="link"/><xsl:value-of select="title"/>
        </xsl:attribute>
        <xsl:value-of select="title"/> 
      </a>
      </td>
      <td>
        <xsl:for-each select="item[title[contains(text(), 'war')]] | item[title[contains(text(), 'peace')]] | item[description[contains(text(), 'war')]] | item[description[contains(text(), 'peace')]]">
        <p>
          <h3><a>
            <xsl:attribute name="href">
            <xsl:value-of select="link"/><xsl:value-of select="title"/>
            </xsl:attribute>
            <xsl:value-of select="title"/> 
          </a></h3>
        <xsl:value-of select="description"/></p>
        </xsl:for-each>
      </td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
