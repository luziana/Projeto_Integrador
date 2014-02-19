<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
        	<title>Congresso de Iniciação Científica do IFRN</title>
                
    </head>
    <body>
    	
    	<nav id="menu">
                <ul class="nav nav-tabs">
                	<!--<li><a href="${createLink(controller:'noticia', action:'inicio')}">Inicio</a></li>-->
                	<li class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Noticia<span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
					    	<li><a href="${createLink(controller:'noticia', action:'create')}">Criar</a></li>
					    	<li><a href="${createLink(controller:'noticia', action:'list')}"><span class="glyphicon glyphicon-list">Listar</a></li>
					      						   </ul>
					</li>	
					
				<li class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Localização<span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
					    	<li><a href="${createLink(controller:'localizacao', action:'create')}">Criar</a></li>
					    	<li><a href="${createLink(controller:'localizacao', action:'list')}">Listar</a></li>
					      						   </ul>
					</li>				    			  
				 	<li class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Hospedagem<span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
					    	<li><a href="${createLink(controller:'hospedagem', action:'create')}">Criar</a></li>
					    	<li><a href="${createLink(controller:'hospedagem', action:'list')}">Listar</a></li>
					      						   </ul>
					</li>
					<li class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Apresentação<span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
					    	<li><a href="${createLink(controller:'apresentacao', action:'create')}">Criar</a></li>
					    	<li><a href="${createLink(controller:'apresentacao', action:'list')}">Listar</a></li>
					      						   </ul>
					</li>
					<li class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Organização<span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
					    	<li><a href="${createLink(controller:'organizacao', action:'create')}">Criar</a></li>
					    	<li><a href="${createLink(controller:'organizacao', action:'list')}">Listar</a></li>
					      						   </ul>
					</li>
					<li class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Programação<span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
					    	<li><a href="${createLink(controller:'programacao', action:'create')}">Criar</a></li>
					    	<li><a href="${createLink(controller:'programacao', action:'list')}">Listar</a></li>
					      						   </ul>
					</li>
					<li class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Áreas Temáticas<span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
					    	<li><a href="${createLink(controller:'tematicas', action:'create')}">Criar</a></li>
					    	<li><a href="${createLink(controller:'tematicas', action:'list')}">Listar</a></li>
					      						   </ul>
					</li>
				</ul>
				
			</nav>
    
     </body>
     
</html>