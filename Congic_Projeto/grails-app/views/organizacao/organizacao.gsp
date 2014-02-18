<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
        	<title>Congresso de Iniciação Científica do IFRN</title>
                
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
    
    	<div id="organizacao">

			</br></br></br><center><h2>Organização</h2></center></br></br></br>
		
			<g:each in="${organizacao?}">

			<p>Equipe: ${it.equipe}</p>
			<p>Coordenação Pau dos Ferros: ${it.coordenacaoPf}</p>
			<p>Coordenação Natal: ${it.coordenacaoNatal}</p>
			
			</g:each>
	
		</div>
                
     </body>
     
</html>