<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="Shift_JIS"/>
  <xsl:template match="/">
    <html>
    <head>
    <title>タイトル: <xsl:value-of select="root/item[@name='firstname']"/></title>
    </head>
    <body>
      <h2><xsl:value-of select="root/item[@name='lastname']"/></h2>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
