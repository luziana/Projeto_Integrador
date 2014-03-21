<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
        	<title>Congresso de Iniciação Científica do IFRN</title>
                
    </head>
    <body>
    	
    	<div class="menu">
				<g:render template="/home/menu" model="[menu: menu]" />
			</div>
		
		 <!-- Carrossel Imagens-->

			<div id="myCarousel" class="carousel slide">
        	<!-- Indicators -->
        		<ol class="carousel-indicators">
            		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            		<li data-target="#myCarousel" data-slide-to="1"></li>
            		<li data-target="#myCarousel" data-slide-to="2"></li>
       			 </ol>

       		<div class="carousel-inner">
            	<div class="item active">
                	<div class="fill" style="background-image:url('#');">
                	 <img src="${createLink (controller:'image', action:'showImage', id:"${arquivo?.id=1}")}">
                	</div>
                		<div class="carousel-caption">
                   			<h1></h1>
                		</div>
            		</div>
            <div class="item">
                <div class="fill" style="background-image:url('#');">
                	 <img src="${createLink (controller:'image', action:'showImage', id:"${arquivo?.id=2}")}">
                </div>
                <div class="carousel-caption">
                    <h1></h1>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('#');">
                	 <img src="${createLink (controller:'image', action:'showImage', id:"${arquivo?.id=3}")}">
                </div>
                <div class="carousel-caption">
                    <h1></h1>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </div>
    
    <!-- Titulo da Página -->
    
    <div class="container">
            <div class="row">
            	 <g:each in="${tituloPaginas?}">
                <div class="col-lg-12">
                <h1 class="page-header">${it.tituloOrganizacao} 
                    <small>${it.subtituloOrganizacao}</small>
                </h1>
                
                </div>
                 </g:each>
            </div>
            <div class="row">
           <div class="col-lg-12">
            <ol class="breadcrumb">
                    <li><a href="${createLink(controller:'home', action:'home')}">Início</a>
                    </li>
                    <li class="active">Organização</li>
                </ol>
                </div>
             </div>
                       
            <div class="row">
                    

            <div class="col-lg-8">

               <g:each in="${organizacao?}">
            		
            		<div id="organizacao">		
						<h4>Cidade Sede</h4><br/>
						<ul>${it.cidade}</ul><br/>
						<g:each in="${organizacao.coordenacao?}" var="cord">
							<h4>Nome da coordenação:</h4><br/>
                   			<ul><p>${cord.nome[0]}</p></ul><br/>
                   			<h4>Cargo:</h4><br/>
                   			<ul><p>${cord.cargo[0]}</p></ul>
                     </g:each> 
                 
						
						<hr/>
					</div>
               </g:each>
               
               <ul class="pager">
                    <li class="previous"><a href="${createLink(controller:'apresentacao', action:'apresentacao')}">&larr;Voltar</a>
                    </li>
                    <li class="next"><a href="${createLink(controller:'localizacao', action:'index')}">Avançar &rarr;</a>
                    </li>
                    
                </ul>
           </div>

			<tbody id="result">
				<g:each in="${noticias}" status="i" var="noticia">
					
						<tr>
							<td>
								${noticia.titulo}
							</td>
							<td>
				</g:each>
			</tbody>

			<!-- Lado esquerdo -->

            <div class="col-lg-4">
                <div class="well">
                    <h4>Blog Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control" id="inTitulo">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" id="find"><i class="fa fa-search"></i>
                            </button>
                        </span>
                        
                    </div>
                   
                    <!-- /input-group -->
                </div>
                
                <div class="well">
                    <h4><p>Redes Sociais</p></h4>
                			<ul class="list-unstyled list-inline list-social-icons">
                    			<li class="tooltip-social facebook-link"><a href="https://www.facebook.com" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook-square fa-3x"></i></a>
                    			</li>
                    			<li class="tooltip-social linkedin-link"><a href="https://br.linkedin.com/‎" data-toggle="tooltip" data-placement="top" title="LinkedIn"><i class="fa fa-linkedin-square fa-3x"></i></a>
                   				</li>
                    			<li class="tooltip-social twitter-link"><a href="https://twitter.com/" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter-square fa-3x"></i></a>
                    			</li>
                    			<li class="tooltip-social google-plus-link"><a href="https://plus.google.com/" data-toggle="tooltip" data-placement="top" title="Google+"><i class="fa fa-google-plus-square fa-3x"></i></a>
                    			</li>
               				</ul>
                </div>
                 
                <div class="well">
                    <h4>Principais Categorias</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="https://www.mec.gov.br/‎">MEC</a>
                                </li>
                                <li><a href="https://www.inep.gov.br/‎">Inep</a>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="http://portal.ifrn.edu.br/">IFRN</a>
                                </li>
                                <li><a href="http://portal.ifrn.edu.br/campus/paudosferros">IFRN - Pau dos Ferros</a>
                                </li>
                                
                                <li><a href="#business-casual"></a>
                            </ul>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
     </div>
    
   </html>