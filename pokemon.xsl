<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <header>
                <style>
                    h1{
                        text-align: center;
                    }

                    table{
                        width: 100%;                    
                    }

                    img{
                        width: 100px;
                        height: 100px;
                    }

                    tr{
                        background-color: orange;
                        margin: 5px;
                        color: #FFFFFF;
                        font-family: Arial, Helvetica, sans-serif;
                        text-align: center;
                        border: 1px solid;
                        border-color: black;
                    }

                    th{
                        border: 1px solid;
                        color : black;
                        border-color: black;
                    }

                    div{
                        display: flex;
                        justify-content: space-between;
                        margin: 15px;
                        margin-left:100px;
                        padding-left: 100px;
                    }
                </style>
            </header>
            <body>
                <h1>LISTADO DE POKEMON</h1>
                <div>
                    <h4>Pokemon</h4>
                    <h4>Nom</h4><br/>
                    <h4>Idioma</h4>
                    <h4>Categoria</h4>
                    <h4>Sexe</h4>
                    <h4>Altura</h4>
                    <h4>Pes</h4>
                </div>
                <table>
                <xsl:for-each select="pokedex/pokemon">
                <tr>   
                    <xsl:attribute name="style">
                        <xsl:choose>
                            <xsl:when test="tipo='Fuego'">background-color: #B9A039;</xsl:when>
                            <xsl:when test="tipo='Agua'">background-color: #4FB6CF;</xsl:when>
                            <xsl:when test="tipo='Tierra'">background-color: #B7864E;</xsl:when>
                            <xsl:otherwise>background-color: white;</xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>               
                    <th>
                        <xsl:if test="foto">
                            <a href="{URL}">
                                <xsl:variable name="fotoUrl" select="foto"/>
                                <img src="{$fotoUrl}" alt="foto"/>
                              </a>
                        </xsl:if>
                    </th>
                    <th>
                        <xsl:value-of select="nombre"/>  
                    </th>
                    <th>
                        <xsl:value-of select="idioma"/>
                    </th>
                    <th>
                        <xsl:value-of select="categoria"/>
                    </th>
                    <th>
                        <xsl:value-of select="sexe"/>
                    </th>
                    <th>
                        <xsl:value-of select="altura"/>
                    </th>
                    <th>
                        <xsl:value-of select="pes"/>
                    </th>
                </tr>
                </xsl:for-each>
            </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>