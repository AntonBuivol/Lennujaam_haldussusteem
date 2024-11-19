<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

	<xsl:output method="html" indent="yes" encoding="utf-8"/>

	<xsl:template match="/">
		<html>
			<head>
				<title>Lennujaamad</title>
			</head>
			<body>
				<h1>Lennujaamad (XSLT)</h1>
				<label for="searchValjuCity">Valjumiskoht</label>
				<input type="text" name="searchValjuCity" placeholder="Otsi Valjumiskoht" id="searchValjuCity" onkeyup="filterTable()"/>

				<label for="searchSaabuCity">Saabumiskoht</label>
				<input type="text" name="searchSaabuCity" placeholder="Otsi Saabumiskoht" id="searchSaabuCity" onkeyup="filterTable()"/>
				
				<label for="searchSaabuCity">Valjumisaeg</label>
				<input type="date" name="searchDateValja" id="searchDateValja" onkeyup="filterTable()"/>
				
				<label for="searchSaabuCity">Saabumisaeg</label>
				<input type="date" name="searchDateSaabu" id="searchDateSaabu" onkeyup="filterTable()"/>

				<table id="lendTable">
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
				<xsl:text disable-output-escaping="yes">
				<![CDATA[
				 <script>
					function filterTable() {
										var Valjumiskoht = document.getElementById("searchValjuCity").value.toLowerCase();
										var Saabumiskoht = document.getElementById("searchSaabuCity").value.toLowerCase();
										var Valjumisaeg = document.getElementById("searchDateValja").value;
										var Saabumisaeg = document.getElementById("searchDateSaabu").value;
										var table = document.getElementById("lendTable");
										var rows = table.getElementsByTagName("tr");

										var searchDateValjaDateTime = Valjumisaeg ? new Date(Valjumisaeg) : null;
										var searchDateSaabuDateTime = Saabumisaeg ? new Date(Saabumisaeg) : null;

										for (var i = 1; i < rows.length; i++) {

											var valjuTd = rows[i].getElementsByTagName("td")[0];
											var saabuTd = rows[i].getElementsByTagName("td")[1];
											var valjuaegTd = rows[i].getElementsByTagName("td")[2];
											var saabuaegTd = rows[i].getElementsByTagName("td")[3];

											var valjuText = valjuTd ? valjuTd.textContent.toLowerCase() : "";
											var saabuText = saabuTd ? saabuTd.textContent.toLowerCase() : "";
											var valjuaegText = valjuaegTd ? valjuaegTd.textContent : "";
											var saabuaegText = saabuaegTd ? saabuaegTd.textContent : "";

											var valjuaeg = valjuaegText ? new Date(valjuaegText) : null;
											var saabuaeg = saabuaegText ? new Date(saabuaegText) : null;

											if ((valjuText.includes(Valjumiskoht) || Valjumiskoht === "") &&
												(saabuText.includes(Saabumiskoht) || Saabumiskoht === "") &&
												(searchDateValjaDateTime ? valjuaeg && valjuaeg >= searchDateValjaDateTime : true) &&
												(searchDateSaabuDateTime ? saabuaeg && saabuaeg <= searchDateSaabuDateTime : true)){
												rows[i].style.display = "";
											} else {
												rows[i].style.display = "none";
											}
										}
									}
				</script>
				]]>
			</xsl:text>
			</body>
		</html>
	 
	</xsl:template>
</xsl:stylesheet>
