<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>

    <xsl:template match="@* | node()">
		<h3>Lennujaamad</h3>

		<table style="border: solid black 1px;">
			<tr bgcolor="lightblue">
				<th>Valjumiskoht</th>
				<th>Saabumiskoht</th>
				<th>Lennujaam</th>
				<th>Lennu hind</th>
				<th>Kliendi hinnang</th>
				<th>Majutuse hind</th>
			</tr>
			<xsl:for-each select="reisid/reis">
				<tr>
					<td>
						<xsl:value-of select="marsruut/valjumiskoht"/>
					</td>
					<td>
						<xsl:value-of select="marsruut/saabumiskoht"/>
					</td>
					<td>
						<xsl:value-of select="lennujaam"/>
					</td>
					<td>
						<xsl:value-of select="hind/lennuhind"/>
					</td>
					<td>
						<xsl:value-of select="kliendihinnang"/>
					</td>
					<td>
						<xsl:value-of select="hind/majutusehind"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		
    </xsl:template>
</xsl:stylesheet>
