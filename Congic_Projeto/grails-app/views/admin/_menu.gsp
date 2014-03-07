<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main"/>
         <title>Congresso de Iniciação Científica do IFRN</title>
                
    </head>
    <body>
     	<div class="nav" role="navigation">
<div id="loginDiv">
<g:render template="/shared/loginForm" />
</div>
</div>	
     <nav id="menu">
                <ul class="nav nav-tabs">
                 <!--<li><a href="${createLink(controller:'noticia', action:'inicio')}">Inicio</a></li>-->
                 <li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Noticia<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="#" onClick="carregarPagina('<g:createLink controller='noticia' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
<li><a href="#" onClick="carregarPagina('<g:createLink controller='noticia' action='list' />')"> Listar</a></li>

</ul>
</li>	

<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Localização<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="#" onClick="carregarPagina('<g:createLink controller='localizacao' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
<li><a href="#" onClick="carregarPagina('<g:createLink controller='localizacao' action='list' />')"> Listar</a></li>

</ul>
</li>	
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Hospedagem<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="#" onClick="carregarPagina('<g:createLink controller='hospedagem' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
<li><a href="#" onClick="carregarPagina('<g:createLink controller='hospedagem' action='list' />')">Listar</a></li>

</ul>
</li>
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Apresentação<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="#" onClick="carregarPagina('<g:createLink controller='apresentacao' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
<li><a href="#" onClick="carregarPagina('<g:createLink controller='apresentacao' action='list' />')"> Listar</a></li>

</ul>
</li>
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Organização<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="#" onClick="carregarPagina('<g:createLink controller='organizacao' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
<li><a href="#" onClick="carregarPagina('<g:createLink controller='organizacao' action='list' />')"> Listar</a></li>

</ul>
</li>
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Coordenação<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="#" onClick="carregarPagina('<g:createLink controller='coordenacao' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
<li><a href="#" onClick="carregarPagina('<g:createLink controller='coordenacao' action='list' />')"> Listar</a></li>

</ul>
</li>
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Programação<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="#" onClick="carregarPagina('<g:createLink controller='programacao' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
<li><a href="#" onClick="carregarPagina('<g:createLink controller='programacao' action='list' />')"> Listar</a></li>

</ul>
</li>
<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Áreas Temáticas<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="#" onClick="carregarPagina('<g:createLink controller='tematicas' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
<li><a href="#" onClick="carregarPagina('<g:createLink controller='tematicas' action='list' />')"> Listar</a></li>

</ul>
</li>

<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Artigos<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="#" onClick="carregarPagina('<g:createLink controller='artigos' action='create' />')"><span class="glyphicon glyphicon-plus"></span> Criar</a></li>
<li><a href="#" onClick="carregarPagina('<g:createLink controller='artigos' action='list' />')"> Listar</a></li>

</ul>
</li>
</ul>


</nav>
 		  
     </body>
     
</html>

