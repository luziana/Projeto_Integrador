<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main"/>
         <title>Congresso de Iniciação Científica do IFRN</title>
                
    </head>
    <body>
    
    
<ul class="nav nav-tabs">
    <li class="dropdown" >
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> Perfil de Usuário</a>
                        </li>
                        <li><a href="#"><i class="fa fa-fw" data-toggle="modal" data-target="#myModalLocation"> Configurações</i></a>
                        </li>
                        <li class="divider"></li>
                        <li><g:link controller="logout"><i class="fa fa-sign-out fa-fw"></i> Sair</a></g:link>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>

</ul>


<div class="container">

        <div class="row">
            <div class="col-md-3 col-sm-4 sidebar">
                <ul class="nav nav-stacked nav-pills">
                
                <center><h4><small>Início<hr></small></h4></center>
                
                    <li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Noticia<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='noticia' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='noticia' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='noticia' action='edit' />')"> Editar</a></li>
							</ul>
					</li>
					
				<center><h4><small><hr>Evento<hr></small></h4></center>
						
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Apresentação<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='apresentacao' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='apresentacao' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='apresentacao' action='edit' />')"> Editar</a></li>								
							</ul>
					</li>
						
                    <li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Localização<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='localizacao' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='localizacao' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='localizacao' action='edit' />')"> Editar</a></li>																
							</ul>
					</li>
					
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Hospedagem<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='hospedagem' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='hospedagem' action='list' />')">Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='hospedagem' action='edit' />')"> Editar</a></li>
							</ul>
					</li>
					
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Organização<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='organizacao' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='organizacao' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='organizacao' action='edit' />')"> Editar</a></li>							
							</ul>
					</li>

					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Coordenação<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='coordenacao' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='coordenacao' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='coordenacao' action='edit' />')"> Editar</a></li>								
							</ul>
					</li>
					
					
				<center><h4><small><hr>Cadastrar MiniCursos e Palestras<hr></small></h4></center>
					
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Data de Realização<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='evento' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='evento' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='evento' action='edit' />')"> Editar</a></li>
							</ul>
					</li>
					
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Minicurso<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='minicurso' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='minicurso' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='minicurso' action='edit' />')"> Editar</a></li>
							</ul>
					</li>
					
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Palestra<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='palestra' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='palestra' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='palestra' action='edit' />')"> Editar</a></li>
							</ul>
					</li>
					
					
					
					
				<center><h4><small><hr>Programação do Evento<hr></small></h4></center>
					
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Programação<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='programacao' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='programacao' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='programacao' action='edit' />')"> Editar</a></li>							
							</ul>
					</li>
					
				<center><h4><small><hr>Submissão Artigos e Resultados<hr></small></h4></center>
					
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Artigos<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='artigos' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='artigos' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='artigos' action='edit' />')"> Editar</a></li>			
							</ul>
					</li>
					
				<center><h4><small><hr>Areas Temáticas<hr></small></h4></center>	
	
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Areas<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#" onClick="carregarPagina('<g:createLink controller='area' action='create' />')">Criar</a></li>
							<li><a href="#" onClick="carregarPagina('<g:createLink controller='area' action='list' />')"> Listar</a></li>
							<li><a href="#" onClick="carregarPagina('<g:createLink controller='area' action='edit' />')"> Editar</a></li>
					</ul>
				</li>
				
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Sub Areas<span class="carete"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#" onClick="carregarPagina('<g:createLink controller='subArea' action='create' />')">Criar</a></li>
						<li><a href="#" onClick="carregarPagina('<g:createLink controller='subArea' action='list' />')"> Listar</a></li>
						<li><a href="#" onClick="carregarPagina('<g:createLink controller='subArea' action='edit' />')"> Editar</a></li>
					</ul>
				</li>
				
				<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Áreas Temáticas<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#" onClick="carregarPagina('<g:createLink controller='tematicas' action='create' />')">Criar</a></li>
							<li><a href="#" onClick="carregarPagina('<g:createLink controller='tematicas' action='list' />')">Listar</a></li>		
							<li><a href="#" onClick="carregarPagina('<g:createLink controller='tematicas' action='edit' />')">Editar</a></li>
						</ul>
					</li>
				
				
				<center><h4><small><hr>Detalhamento do Site<hr></small></h4></center>
					
                    <li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Imagens Carrossel<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='image' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='image' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='image' action='edit' />')"> Editar</a></li>							
							</ul>
					</li>
					
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Link Menu<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='menu' action='edit' />')"><span class="glyphicon glyphicon-plus"></span> Editar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='menu' action='list' />')"> Listar</a></li>
							</ul>
					</li>

					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Titulo Páginas<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='tituloPaginas' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='tituloPaginas' action='list' />')"> Listar</a></li>
								<li><a href="#" onClick="carregarPagina('<g:createLink controller='tituloPaginas' action='edit' />')"> Editar</a></li>
							</ul>
					</li>
					<hr>
			</ul>
	
            </div>

            <div class="col-md-9 col-sm-8">
                <h1 class="page-header">Administração,
                    <small>Criar, editar e remover dados!</small>
                </h1>

                
                <div class="content" id="content">
            </div>
            </div>

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->

 		  
     </body>
     
</html>

