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
    <!-- Form XML �� <body><richtext> �v�f�����̂܂� -->
    -

    <!-- sharedfield �͕��ʂ� field �Ɠ����悤�Ɉ���
    <sharedfieldref name="Shared_Subject"/>
    -->
    <xsl:value-of select="item[@name='Shared_Subject']"/>

    -

      :

    <pardef id="3" align="right"/>
    <par def="3">

    <!-- field �� item �� name �����ōi�荞��ő������
    <field type="names" kind="computedwhencomposed" name="Username">
      <code event="defaultvalue">
        <formula>@Name( [CN]; @UserName )</formula>
      </code>
    </field>
    -->
    <xsl:value-of select="item[@name='Username']"/>

    </par>

    <par def="2"/>

    <!-- subform �͂܂��T�u�t�H�[���v�f�̃e���v���[�g���`���A�K�p����
    <subformref name="SubForm1 | �T�u�t�H�[���P"/>
    -->
    <xsl:apply-templates select="."/>

    <par def="2"/>
    <par def="2"/>
    <par def="2"/>

    <pardef id="4">
      <code event="hidewhen"><formula>@True</formula></code>
    </pardef>

    <par def="4"/>
      <run>
        <font color="gray"/>
        ---
      </run>
    </par>
    <par def="4"/>
      <run>
        <font color="gray"/>
      </run>

      <!-- sharedfield �͕��ʂ� field �Ɠ����悤�Ɉ���
      <sharedfieldref name="Shared_Created"/>
      -->
      <xsl:value-of select="item[@name='Shared_Created']"/>

      <run>
        <font color="gray"/>
      </run>
    </par>

    <par def="2"/>
    <par def="2"/>
  </xsl:template>


  <!-- subform "SubForm1" �� <body> �� -->
  <xsl:template name="SubForm1">
    <richtext>
      <pardef id="1"/>
      <par def="1"/>
      <par def="1">
        <!-- field 
        <field type='richtext' kind='editable' name='Body'/>
        <compositedata type='98' prevtype='65418' nexttype='222' afterparcount='6' containertype='65418' aftercontainercount='1' afterbegincount='3'>Yg4BAIQAAAAAAAEAAAA=</compositedata>
        -->
        <xsl:value-of select="item[@name='Body']/node()"/>
      </par>

      <par def="1"/>
      <pardef id="2" align="right"/>
      <par def="2">
        <run>
          <font color="red"/>
          <!-- sharedfield 
          <sharedfieldref name='Shared_Modified'/>
          -->
          <xsl:value-of select="item[@name='Shared_Modified']"/>
        </run>
      </par>
      <par def="1"/>
    </richtext>
  </xsl:template>

</xsl:stylesheet>
