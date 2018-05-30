<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="Rascacielo">
		<html>
			<p align="center">
					<font color="red" size="5">
						Edificios
					</font>
				</p>
				<table border="1" align="center" bgcolor="cyan">
					<tr>
						
						<td><b>Nombre</b></td>
						<td><b>Anio Construccion</b></td>

					</tr>
					
						<xsl:apply-templates/>		
					</table>				
					
		</html>
	</xsl:template>
	
	<xsl:template match="Edificio">
		<xsl:variable name="cont" select="../Continente/Nombre"/>
		<tr>
		<xsl:for-each select="../Continente/Nombre">
				<xsl:if test="@conti=$cont">
					<td>
						<xsl:value-of select="NombreEdif"/>
					</td>
				</xsl:if>
			</xsl:for-each>
		</tr>
</xsl:template>
	
</xsl:stylesheet>