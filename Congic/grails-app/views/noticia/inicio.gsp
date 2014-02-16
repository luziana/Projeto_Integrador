<html>
<head>
 <meta name="layout" content="main"/>
                <title>Congresso de Iniciação Científica do IFRN - Noticias</title>
                
</head>
<body>

<<<<<<< HEAD
<nav id="menu">
                <ul class="nav nav-tabs">
                	<li><a href="${createLink(controller:'noticia', action:'inicio')}">Inicio</a></li>
                	<li class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Evento<span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
					      <li><a href="${createLink(controller:'localizacao', action:'index')}">Localização</a></li>
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
 			
=======
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
>>>>>>> 4b1364f5ed8fe78c9b47be50e37cde16150455e4

<div id="noticia">

	</br></br></br><center><h2>Noticias</h2></center></br></br></br>
	
	<g:each in="${noticias?}">

	<p>Titulo: ${it.titulo}</p>
	<p>Descrição: ${it.descricao}</p>

	</g:each>
</div>
</body>
</html>