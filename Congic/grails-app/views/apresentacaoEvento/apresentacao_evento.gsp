<!DOCTYPE html>
<html>
        <head>
                <meta name="layout" content="main"/>
                <title>Congresso de Iniciação Científica do IFRN - Apresentação Evento</title>
                
                </head>
                <body>
               <nav id="menu">
                <ul class="nav nav-tabs">
                	<li><a href="${createLink(controller:'noticia', action:'inicio')}">Inicio</a></li>
                	<li class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Evento<span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
					      <li><a href="${createLink(controller:'apresentacaoevento', action:'apresentacao_evento')}">Apresentação do Evento</a></li>
					      <li><a href="${createLink(controller:'localizacao', action:'index')}">Localização</a></li>
					      <li><a href="#">teste</a></li>
					      <li><a href="#">Submissão de Artigos</a></li>
					      <li><a href="#">Submissão de Artigos</a></li>
					   </ul>
					</li>
		
				    	<li><a href="${createLink(controller:'areastematicas', action:'areasTematicas')}">Áreas Temáticas</a></li>
				    	<li><a href="#">Submissão de Artigos</a></li>
				    	<li><a href="#"></a></li>
				    	<li><a href="${createLink(controller:'programacao', action:'programacao')}">Programação</a></li>
				    	<li><a href="#">Mostra Tecnológica</a></li>			  
				 
				</ul>
			</nav>
               
                
                
   <%--             
                 <nav id="menu">
    <ul>
    
   <li><a href="${createLink(controller:'noticia', action:'inicio')}">Inicio</a></li>
    <li><a href="#">Evento</a></li>
    <li><a href="${createLink(controller:'areasTematicas', action:'areasTematicas')}">Áreas Temáticas</a></li>
    <li><a href="#">Submissão de Artigos</a></li>
    <li><a href="${createLink(controller:'programacao', action:'programacao')}">Programação</a></li>
    <li><a href="#">Mostra Tecnológica</a></li>
    
    </ul>
    </nav>
    --%>
    
    <div id="apresentacao">

	<g:each in="${apresentacao?}">

		
		<p>Descrição: ${it.descricaoEvento}</p>
		<p>Temática: ${it.tematica}</p>
		<p>Data: ${it.data}</p>
		<p>Histórico: ${it.historico}</p>

	</g:each>
</div>
                
        </body>
</html>