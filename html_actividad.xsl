<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <title>Instituto tecnológico Edix</title>
            <link rel="stylesheet" href="AE-3.css"/>
        </head>
        <body>

            <!-- Header de la página -->
            <header> 
                <img class="logo" src="img/logo.png"></img>
                <p class="nombre"><xsl:value-of select="/ite/@nombre"></xsl:value-of></p>
                
            </header>

            <!-- Título para la información -->
            <h2 class="informacion"> Información del centro</h2>
            
            <!-- Lista desordenada para la información -->
            <ul>
                <li>Empresa :<xsl:value-of select="/ite/empresa"></xsl:value-of></li>
                <li>Teléfono :<xsl:value-of select="/ite/telefono"></xsl:value-of></li>
                <li>Página web :<a href="{/ite/@web}">EDIX</a></li>
            </ul>

            
            <section>
                <div class="carta1">
                    <h2 class="centrado">Profesorado</h2>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>ID</th>
                            </tr>
                        </thead>

                        <tbody>
                            <xsl:for-each select="//profesores">
                                <tr>
                                    <td><xsl:value-of select="profesor/nombre"/></td>
                                    <td><xsl:value-of select="profesor/id"/></td>
                                </tr>

                                <tr>
                                    <td><xsl:value-of select="profesor[id = 2]/nombre"/></td>
                                    <td><xsl:value-of select="profesor[id = 2]/id"/></td>
                                </tr>

                                <tr>
                                    <td><xsl:value-of select="profesor[id = 3]/nombre"/></td>
                                    <td><xsl:value-of select="profesor[id = 3]/id"/></td>
                                </tr>

                                <tr>
                                    <td><xsl:value-of select="profesor[id = 4]/nombre"/></td>
                                    <td><xsl:value-of select="profesor[id = 4]/id"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>

                <div class="carta2">
                    <h2 class="centrado" >Ciclos</h2>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Grado</th>
                                <th>Decreto titulo</th>
                            </tr>
                        </thead>

                        <tbody>
                            <xsl:for-each select="//ciclos">
                                <tr>
                                    <td><xsl:value-of select="ciclo[@id = 'ASIR']/@id"/></td>
                                    <td><a href="https://unirfp.unir.net/ingenieria/fp-grado-asir"><xsl:value-of select="ciclo[@id = 'ASIR']/nombre"/></a></td>
                                    <td><xsl:value-of select="ciclo[@id = 'ASIR']/grado"/></td>
                                    <td><xsl:value-of select="ciclo[@id = 'ASIR']/decretoTitulo/@año"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>

                        <tbody>
                            <xsl:for-each select="//ciclos">
                                <tr>
                                    <td><xsl:value-of select="ciclo[@id = 'DAM']/@id"/></td>
                                    <td><a href="https://unirfp.unir.net/ingenieria/fp-grado-desarrollo-aplicaciones-multiplataforma-dam/"><xsl:value-of select="ciclo[@id = 'DAM']/nombre"/></a></td>
                                    <td><xsl:value-of select="ciclo[@id = 'DAM']/grado"/></td>
                                    <td><xsl:value-of select="ciclo[@id = 'DAM']/decretoTitulo/@año"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>

                        <tbody>
                            <xsl:for-each select="//ciclos">
                                <tr>
                                    <td><xsl:value-of select="ciclo[@id = 'DAW']/@id"/></td>
                                    <td><a href="https://unirfp.unir.net/ingenieria/fp-grado-daw-desarrollo-de-aplicaciones-web/"><xsl:value-of select="ciclo[@id = 'DAW']/nombre"/></a></td>
                                    <td><xsl:value-of select="ciclo[@id = 'DAW']/grado"/></td>
                                    <td><xsl:value-of select="ciclo[@id = 'DAW']/decretoTitulo/@año"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>

                <div class="carta3">
                    <h2 class="centrado">Claustro</h2>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Director</th>
                                <th>Nombre</th>
                                <th>Despacho</th>
                            </tr>
                        </thead>

                        <tbody>
                            <xsl:for-each select="/ite">
                                <tr>
                                    <td></td>
                                    <td><xsl:value-of select="director/nombre"/></td>
                                    <td><xsl:value-of select="director/despacho"/></td>
                                </tr>

                                <tr>
                                    <th>Jefe de estudios</th>
                                    <th>Nombre</th>
                                    <th>Despacho</th>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td><xsl:value-of select="jefe_estudios/nombre"/></td>
                                    <td><xsl:value-of select="jefe_estudios/despacho"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </section>

            <!-- Separador -->
            <div class="separador"></div>




            <!-- Formulario-->
            <div class= "formulario"> 
                <form method="post">
                    <fieldset>
                        <legend>Formulario de contacto </legend>

                        <!-- Nombre del formulario -->
                        <label for="nombre"> Nombre: 
                            <input id="nombre" type="text" name="nombre" required=""/>
                        </label>

                        <!-- Apellido del formulario -->
                        <label for="apellido" > Apellido:
                            <input id="apellido" type="text" name="apellido" required=""/> 
                        </label>
                        <br/>
                        <br/>

                        <!-- Edad del formulario -->
                        <label for="edad"> Email:
                            <input id="email" type="text" name="email" required=""/> 
                        </label>

                        <!-- Nickname del formulario -->
                        <label for="nickname"> Número de contacto: 
                            <input id="numero_contacto" type="text" name="numero_contacto" required=""/>
                        </label>
                        <br/>
                        <br/>

                        <label for="dudas">Escríbenos tu duda: </label>
                        <br/>	
                        <!-- Para evitar que el usuario pueda redimensinar el textarea podemos usar
                        CSS. Para ello podemos poner el atributo "resize: none;" -->
                        <textarea style="resize: none;" rows="4" cols="85" name="observaciones" required=""></textarea>
                        <br />
                        <br />

                        <label for="terminos">¿Quieres que te enviemos informacion sobre nuevas becas? </label>
                        <p>Quiero recibir novedades sobre cursos y becas <input type="checkbox" name="informacion" value="Y" required=""/></p>
                        <br/>	
                        <input type="submit" value="Enviar datos" />
                        	
                    </fieldset> 
                </form>
            </div>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>