<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

	<xsl:output method="xml" indent="yes" encoding="utf-8"/>

	<xsl:template match="/">
		<h1>Lennujaamad</h1>

		<h2>Reisid</h2>
		<table style="border: solid black 1px;">
			<tr bgcolor="lightblue">
				<th>Valjumiskoht</th>
				<th>Saabumiskoht</th>
				<th>Valjumisaeg</th>
				<th>Saabumisaeg</th>
			</tr>
			<xsl:for-each select="lennujaamad/lennujaam">
				<tr>
					<td>
						<xsl:value-of select="marsruut/valjumiskoht"/>
					</td>

					<td>
						<xsl:value-of select="marsruut/saabumiskoht"/>
					</td>
					<td>
						<xsl:value-of select="valjumisaeg"/>
					</td>
					<td>
						<xsl:value-of select="saabumisaeg"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>

		<br/>

		<table style="border: solid black 1px;">
			<tr bgcolor="lightblue">
				<th>Valjumiskoht</th>
				<th>Saabumiskoht</th>
				<th>Valjumisaeg</th>
				<th>Saabumisaeg</th>
			</tr>
			<xsl:for-each select="lennujaamad/lennujaam">
				<xsl:if test="marsruut/valjumiskoht='Bogi'">
					<tr>
						<td>
							<xsl:value-of select="marsruut/valjumiskoht"/>
						</td>

						<td>
							<xsl:value-of select="marsruut/saabumiskoht"/>
						</td>
						<td>
							<xsl:value-of select="valjumisaeg"/>
						</td>
						<td>
							<xsl:value-of select="saabumisaeg"/>
						</td>
					</tr>
				</xsl:if>
			</xsl:for-each>
		</table>

		<br/>
		
		<table style="border: solid black 1px;">
			<tr bgcolor="lightblue">
				<th>Valjumiskoht</th>
				<th>Saabumiskoht</th>
				<th>Valjumisaeg</th>
				<th>Saabumisaeg</th>
			</tr>
			<xsl:for-each select="lennujaamad/lennujaam">
				<xsl:sort select="marsruut/valjumiskoht" order="ascending"/>
				<tr>
					<td>
						<xsl:value-of select="marsruut/valjumiskoht"/>
					</td>

					<td>
						<xsl:value-of select="marsruut/saabumiskoht"/>
					</td>
					<td>
						<xsl:value-of select="valjumisaeg"/>
					</td>
					<td>
						<xsl:value-of select="saabumisaeg"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>

		<br/>
		<table style="border: solid black 1px;">
			<tr bgcolor="lightblue">
				<th>Valjumiskoht</th>
				<th>Saabumiskoht</th>
				<th>Valjumisaeg</th>
				<th>Saabumisaeg</th>
			</tr>
			<xsl:for-each select="lennujaamad/lennujaam">
				<xsl:sort select="saabumisaeg" order="descending"/>
				<tr>
					<td>
						<xsl:value-of select="marsruut/valjumiskoht"/>
					</td>

					<td>
						<xsl:value-of select="marsruut/saabumiskoht"/>
					</td>
					<td>
						<xsl:value-of select="valjumisaeg"/>
					</td>
					<td>
						<xsl:value-of select="saabumisaeg"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>

	</xsl:template>
</xsl:stylesheet>
