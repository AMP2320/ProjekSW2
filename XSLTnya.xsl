<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
<html>
<body>
	<h2>Daftar Merk Motor dan Spesifikasi</h2>
		<table border="1">
			<tr bgcolor="grey">
			<th>Merk</th>
			<th>Nama</th>
			<th>Jenis</th>
			<th>Ukuran Mesin</th>
			<th>Jenis Ban</th>
			<th>Jenis REM</th>
			</tr>
	<xsl:for-each select="menu/motor">
	<tr>
		<td>
			<xsl:value-of select="Merk"/>
		</td>
		<td>
			<xsl:value-of select="Nama"/>
		</td>
		<td>
			<xsl:value-of select="Jenis"/>
		</td>
		<td>
			<xsl:value-of select="Ukuranmesin"/>
		</td>
		<td>
			<xsl:value-of select="Jenisban"/>
		</td>
	
	<xsl:choose>
	<xsl:when test="Merk = Honda">
					<td bgcolor="#FFD700">
						<xsl:value-of select="Jenisrem"/>
					</td>
	</xsl:when>
	<xsl:when test="Merk = Kawasaki">
					<td bgcolor="#FFD700">
						<xsl:value-of select="Jenisrem"/>
					</td>
	</xsl:when>
	<xsl:otherwise>
					<td bgcolor="#FFD700">
						<xsl:value-of select="Jenisrem"/>
					</td>
	</xsl:otherwise>
	</xsl:choose>
	</tr>
	</xsl:for-each>
		</table>
</body>
</html>
	</xsl:template>
</xsl:stylesheet>