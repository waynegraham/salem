<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="titlePage">
<table cellpadding="0" cellspacing="0" width="100%" bgcolor="#FFFFFF">
<!-- table width="100%" cellpadding="5" cellspacing="0" -->
  <tr>
    <td valign="top">
      <img width="250" alt="cover">
			<xsl:attribute name="src"><xsl:value-of select="$image.dir"/>\cover.jpg</xsl:attribute></img>
    </td>
    <td>
      <xsl:apply-templates select="//titlePage/*" mode="titlepage"/>
    </td>
  </tr>
</table>
</xsl:template>

<xsl:template match="docTitle/titlePart" mode="titlepage">
  <xsl:choose>
    <xsl:when test="$doc.lang = 'chinese'">
      <xsl:if test="@lang='chinese'">
	<xsl:choose>
	  <xsl:when test="@type='subtitle'">
	    <h4><xsl:apply-templates/></h4>
	  </xsl:when>
	  <xsl:otherwise>
	    <h2><xsl:apply-templates/></h2>
	  </xsl:otherwise>
	</xsl:choose>
      </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <xsl:if test="@lang='english'">
	<xsl:choose>
	  <xsl:when test="@type='subtitle'">
	    <h4><xsl:apply-templates/></h4>
	  </xsl:when>
	  <xsl:otherwise>
	    <h2><xsl:apply-templates/></h2>
	  </xsl:otherwise>
	</xsl:choose>
      </xsl:if>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="docAuthor" mode="titlepage">
  <xsl:choose>
    <xsl:when test="$doc.lang = 'chinese'">
      <xsl:if test="@lang='chinese'">
	<h4><xsl:apply-templates/></h4>
      </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <xsl:if test="@lang='english'">
	<h4><xsl:apply-templates/></h4>
      </xsl:if>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="docImprint/publisher" mode="titlepage">
  <xsl:choose>
    <xsl:when test="$doc.lang = 'chinese'">
      <xsl:if test="@lang='chinese'">
	<h5><xsl:apply-templates/></h5>
      </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <xsl:if test="@lang='english'">
	<h5><xsl:apply-templates/></h5>
      </xsl:if>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="docImprint/pubPlace" mode="titlepage">
  <xsl:choose>
    <xsl:when test="$doc.lang = 'chinese'">
      <xsl:if test="@lang='chinese'">
	<h5><xsl:apply-templates/></h5>
      </xsl:if>
    </xsl:when>
    <xsl:otherwise>
      <xsl:if test="@lang='english'">
	<h5><xsl:apply-templates/></h5>
      </xsl:if>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

</xsl:stylesheet>




