<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="CarrotCafe.css"/>
      </head>
      <body>
        <h2>Luca’s Loaves</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>

			<th>Picture</th>
          </tr>
          <xsl:for-each select="CarrotCafe/record">
          <tr>
            <td><xsl:value-of select="CakeName"/></td>
            <td><xsl:value-of select="Price"/></td>
            <td><xsl:value-of select="Description"/></td>

			<td>
            <img src="{lop}" align="left"/>
			</td>
          </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
