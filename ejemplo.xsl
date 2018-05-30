<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
version="1.0">

   <xsl:template match="Fabrica">
      <html>
	   <body bgcolor="magenta">Holas
	    <table border="1">  
		  <tr> 
	         <th>Ubicacion</th>
	         <th>Zona</th>
	         <th>Productos</th>
		  
          </tr>

		 <xsl:apply-templates/>
	   </table>
	   </body>
      </html>
   </xsl:template>

   <xsl:template match="Nombre">
       <tr> 
	      
		 <xsl:apply-templates/>
		  
       </tr>
   </xsl:template>

   <xsl:template match="Ubicacion">
	     <td>
		 <xsl:apply-templates/>
		 </td>
   </xsl:template>

    <xsl:template match="Zona">
	     <td>
		 <xsl:apply-templates/>
		 </td>
   </xsl:template>
  
   <xsl:template match="Productos">
	     <td>
		 <table Border="0.1">
		 <xsl:apply-templates/>
		 </table>
		 </td>
   </xsl:template>
   <xsl:template match="Producto">
	     <tr>
		 <td>
		 <xsl:apply-templates/>
		  </td>
		 </tr> 
   </xsl:template>

  
</xsl:stylesheet>

