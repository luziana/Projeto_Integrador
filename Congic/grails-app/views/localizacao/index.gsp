<!DOCTYPE html>
<html>
        <head>
        <script type="text/javascript">
        	 function detectBrowser() {
	        	  var useragent = navigator.userAgent;
	        	  var mapdiv = document.getElementById("map_canvas");
	
	        	  if (useragent.indexOf('iPhone') != -1 || useragent.indexOf('Android') != -1 ) {
	        	    mapdiv.style.width = '100%';
	        	    mapdiv.style.height = '100%';
	        	  } else {
	        	    mapdiv.style.width = '600px';
	        	    mapdiv.style.height = '800px';
	        	  }
        	}
        </script>      
                <meta name="layout" content="main"/>
                <title>Congresso de Iniciação Científica do IFRN > Localização</title>
             
                
                <resource:include components="map" key="AIzaSyBS0q7wbuQAkt36ZfITUGAvULWEkgQhFi0"/>
                
                
                
                </head>
                <body>
               <nav id="menu">
                <ul class="nav nav-tabs">
                	<li><a href="${createLink(controller:'noticia', action:'inicio')}">Inicio</a></li>
                	<li class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Evento<span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
						  <li><a href="${createLink(controller:'apresentacaoevento', action:'apresentacao_evento')}">Apresentação do Evento</a></li>					      <li><a href="${createLink(controller:'localizacao', action:'index')}">Localização</a></li>
					      <li><a href="#">teste</a></li>
					      <li><a href="#">Submissão de Artigos</a></li>
					      <li><a href="#">Submissão de Artigos</a></li>
					   </ul>
					</li>
		
				    	<li><a href="#">Áreas Temáticas</a></li>
				    	<li><a href="#">Submissão de Artigos</a></li>
				    	<li><a href="#"></a></li>
				    	<li><a href="${createLink(controller:'programacao', action:'programacao')}">Programação</a></li>
				    	<li><a href="#">Mostra Tecnológica</a></li>			  
				 
				</ul>
			</nav>

	</br></br></br><center><h2>Localização</h2></center></br></br></br>
		
	<g:each in="${noticias?}">

		<p>Titulo: ${it.titulo}</p>
		<p>Descrição: ${it.descricao}</p>

	</g:each>
</div>
<!-- <p>Realis"grails-app/views/localizacao/index.gsp"e sua pesquisa:</p>-->
<div id="map_canvas">	
	<richui:map type="GoogleMaps" lat="-6.1097267" lng="-38.2079708,15" search="true" />
	
</div>
                
        </body>
</html>