<!DOCTYPE html>
<html>
	<head>
    	<meta name="layout" content="main"/>
    	
        <title>Congresso de Iniciação Científica do IFRN > Localização</title>  
                
         <resource:include components="map" key="AIzaSyBS0q7wbuQAkt36ZfITUGAvULWEkgQhFi0"/>    
                
     </head>
     <body>
     	<div class="menu">
			<g:render template="/home/menu" />
		</div>

			</br></br></br><center><h2>Localização</h2></center></br></br></br>
		
			<%--<g:each in="${localizacao?}">

			<p>Titulo: ${it.titulo}</p>
			<p>Descrição: ${it.descricao}</p>

			</g:each>--%>
		</div>
		
		<div id="map">
			<p>LOCAL DE INSERÇÃO DO MAPA teste</p>
			<richui:map type="GoogleMaps" lat="40.689299" lng="-74.044" search="true" />
		</div>
                
     </body>
</html>