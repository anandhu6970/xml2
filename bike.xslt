<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
<html>
            <head>
                <style>
                .Lists
                {
                margin-left:auto;
                margin-right:auto;
                }
            div
            {
                text-align:center;
                width:48%;
            }
            td,th
            {
                font-size:larger;
                padding:30px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">BIKE RENTING</h1>
                <h2 style="text-align:center;">BIKES BIKES BIKES!</h2>
                <div class='Lists'>
                    <h2>Download Here!</h2>
                    <table border="2">
                        <tr bgcolor="#black">
                            <th style="text-align:left">BIKE NAME</th>
                            <th style="text-align:left">PICKOFF CITY</th>
                            <th style="text-align:left">DROP DATE</th>
                            <th style="text-align:left">Price</th>
                            <th style="text-align:left"> available</th>
                        </tr>
                        <xsl:for-each select="bikes/bike">
                            <tr>
                                <td>
                                    <xsl:value-of select="bikename"/>

                                </td>
                                <td>
                                    <xsl:value-of select="pickoff"/>
                                    
                                </td>
                                <td>
                                    <xsl:value-of select="drop"/>
                                </td>
                                <td>
                                    <xsl:value-of select="price"/>
                                </td>
                                <td>
                                    <xsl:value-of select="available"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

            </body>
        </html>
	</xsl:template>
</xsl:stylesheet>