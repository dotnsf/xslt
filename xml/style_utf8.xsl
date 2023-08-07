<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
    <html>
    <head>
    <title>タイトル</title>
    </head>
    <body>
      <h2><xsl:value-of select="root/item[@name='lastname']"/></h2>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
