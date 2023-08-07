<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="Shift_JIS"/>
  <xsl:template match="/">
    <html>
    <head>
    <title><xsl:value-of select="document/updatedby/name"/></title>
    </head>
    <body>
      <h2><xsl:value-of select="document/item[@name='Shared_Subject']"/></h2>
      <p><xsl:value-of select="document/item[@name='Username']/text"/></p>
      <p><xsl:value-of select="document/noteinfo"/></p>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
