<!DOCTYPE html>
<html>
        <head>
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
					    	<li><a href="${createLink(controller:'apresentacao', action:'apresentacao')}">Apresentação</a></li>
					    	<li><a href="${createLink(controller:'organizacao', action:'organizacao')}">Organização</a></li>
					      	<li><a href="${createLink(controller:'localizacao', action:'index')}">Localização</a></li>
					    	<li><a href="${createLink(controller:'hospedagem', action:'hospedagem')}">Hospedagem</a></li>
					   </ul>
					</li>
				    	<li><a href="${createLink(controller:'tematicas', action:'tematicas')}">Áreas Temáticas</a></li>
				    	<li><a href="#">Submissão de Artigos</a></li>
				    	<li><a href="#"></a></li>
				    	<li><a href="${createLink(controller:'programacao', action:'programacao')}">Programação</a></li>
				    	<li><a href="#">Mostra Tecnológica</a></li>			  
				 
				</ul>
			</nav>

	</br></br></br><center><h2>Localização</h2></center></br></br></br>
		
	<%--<g:each in="${localizacao?}">

		<p>Titulo: ${it.titulo}</p>
		<p>Descrição: ${it.descricao}</p>

	</g:each>
--%></div>
<div id="map">
	<p>LOCAL DE INSERÇÃO DO MAPA teste</p>
	<richui:map type="GoogleMaps" lat="40.689299" lng="-74.044" search="true" />
	
</div>
                
        </body>
</html>