<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Le decimos que la salida va a ser otro XML-->
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <!-- Nos situamos en el nodo raiz-->
    <xsl:template match="/">
    
    <!-- Creamos la etiqueta instituto como nuevo nodo raiz-->
        <instituto>
            <!-- creamos nuevo atributo en instituto, pasando telefono de elemento a atributo -->
            <xsl:attribute name="telefono">
                <xsl:value-of select="/ite/telefono"/>
            </xsl:attribute>
            
            <!-- creamos la etiqueta nombre con el valor del atributo nombre -->
            <nombre><xsl:value-of select="/ite/@nombre"/></nombre>

            <!-- Etiqueta enlace con el valor del atributo web -->
            <enlace><xsl:value-of select="/ite/@web"/></enlace>

            <!-- Etiqueta nom_empresa con el valor de la etiqueta empresa -->
            <nom_empresa><xsl:value-of select="/ite/empresa"/></nom_empresa>

            
            <!-- Etiqueta maestros con el valor de la etiqueta profesores -->
            <maestros><xsl:value-of select="/ite/profesores"/>
                <!-- Etiqueta maestro con el valor de la etiqueta profesor -->
                <xsl:for-each select="/ite/profesores/profesor">
                    <maestro><xsl:value-of select="profesor"/>
                        <!-- Atributo nombre con el valor de la etiqueta nombre -->
                        <xsl:for-each select="/ite/profesores/profesor/nombre">
                            <xsl:attribute name="nombre">
                                <xsl:value-of select="nombre"/>
                            </xsl:attribute>
                        </xsl:for-each>
                        <!-- Etiqueta codigo con el valor de la etiqueta id -->
                        <codigo><xsl:value-of select="id"/></codigo>
                    </maestro>

                    <!-- Etiqueta maestro con el valor de la etiqueta profesor -->
                    <maestro><xsl:value-of select="/ite/profesores/profesor"/>
                        <!-- Atributo nombre con el valor de la etiqueta nombre -->
                        <xsl:for-each select="profesores/profesor/nombre">
                            <xsl:attribute name="nombre">
                                <xsl:value-of select="nombre"/>
                            </xsl:attribute>
                        </xsl:for-each>
                        <!-- Etiqueta codigo con el valor de la etiqueta id -->
                        <codigo><xsl:value-of select="id"/></codigo>
                    </maestro>

                    <!-- Etiqueta maestro con el valor de la etiqueta profesor -->
                    <maestro><xsl:value-of select="/ite/profesores/profesor"/>
                        <!-- Atributo nombre con el valor de la etiqueta nombre -->
                        <xsl:for-each select="profesores/profesor/nombre">
                            <xsl:attribute name="nombre">
                                <xsl:value-of select="nombre"/>
                            </xsl:attribute>
                        </xsl:for-each>
                        <!-- Etiqueta codigo con el valor de la etiqueta id -->
                        <codigo><xsl:value-of select="id"/></codigo>
                    </maestro>
                </xsl:for-each>

            </maestros>

        </instituto>
    

    </xsl:template>


</xsl:stylesheet>
