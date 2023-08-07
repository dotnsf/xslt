<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="Shift_JIS"/>

  <xsl:template match="/">
    <HTML>
    <HEAD>
    </HEAD>
    <BODY>
    <xsl:apply-templates select="/document"/>
    </BODY>
    </HTML>
  </xsl:template>

  <xsl:template match="/document">
    <pardef id="1" align="center"/>
    <par def="1">
    -
      <!--
      <field type="text" kind="editable" name="Shared_Subject"/>
      <compositedata type="98" prevtype="65418" nexttype="222" afterparcount="7" containertype="65418" aftercontainercount="1" afterbegincount="3">
      Yg4BAIQAAAAAAAAAAAA=
      </compositedata>
      -->
      <xsl:value-of select="item[@name='Shared_Subject']"/>
    -
    </par>
    
    <pardef id="2"/>
    <par def="2"/>
    <par def="2">
      <!--
      <field type="authors" kind="computed" name="Username">
      <code event="defaultvalue"><formula>@Name( [CN]; @UserName )</formula></code>
      -->
      <xsl:value-of select="item[@name='Username']"/>
    </par>
    
    <pardef id="2"/>
    <par def="2">
      <!--
      <field type="richtext" kind="editable" name="Body"/>
      <compositedata type="98" prevtype="65418" nexttype="222" afterparcount="6" containertype="65418" aftercontainercount="1" afterbegincount="3">
      Yg4BAIQAAAAAAAEAAAA=
      </compositedata>
      -->
      <xsl:value-of select="item[@name='Body']/node()"/>
    </par>
    
    <pardef id="3" align="right"/>
	<par def="3"/>
	<par def="3">
	  <!--
	  <field type="datetime" kind="computed" name="Shared_Modified">
	    <datetimeformat show="date" date="yearmonthday" fourdigityearfor21stcentury="true" zone="never" dateformat="yearmonthdayweekday" dayformat="twodigitday" monthformat="twodigitmonth" yearformat="fourdigityear" weekdayformat="shortname" dateseparator1="/" dateseparator2="/" dateseparator3=" " timeseparator=":" timeformat24="true" preference="usersetting"/>
	    <code event="defaultvalue"><formula>@Modified</formula></code>
	  </field>
	  -->
      <xsl:value-of select="item[@name='Shared_Modified']"/>
	</par>
	
	<par def="2"/>
	<par def="2"/>
	<par def="2"/>

    <pardef id="4">
      <code event="hidewhen"><formula>@True</formula></code>
    </pardef>
    
    <par def="4">
      <run><font color="gray"/></run>
    </par>
	<par def="2"/>
	<par def="2"/>
  </xsl:template>
</xsl:stylesheet>
