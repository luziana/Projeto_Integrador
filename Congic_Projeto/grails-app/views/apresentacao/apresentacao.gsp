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
                <h1 class="page-header">${it.titulApresentacao} 
                    <small>${it.subtituloApresentacao}</small>
                </h1>
                
                </div>
                 </g:each>
            </div>
            <div class="row">
           <div class="col-lg-12">
            <ol class="breadcrumb">
                    <li><a href="${createLink(controller:'home', action:'home')}">Início</a>
                    </li>
                    <li class="active">Apresentação</li>
                </ol>
                </div>
             </div>
                       
            <div class="row">
                    

            <div class="col-lg-8">

               <g:each in="${apresentacao?}">
            		<div id="apresentacao">	
            			<h4>Apresentação</h4>	
						<br/>	<p>${it.descricaoEvento}</p>
						<br/>	<h4>Tema Abordado</h4>
						<br/>	<p>${it.tematica}</p>
						<br/>	<h4>Data Projeto</h4>
						<br/>	<p>${it.data}</p>
						<hr/>
					</div>
               	</g:each>
               	
               	<ul class="pager">
                   <li class="previous"><a href="${createLink(controller:'home', action:'home')}">&larr;Voltar</a>
                    </li>
                    <li class="next"><a href="${createLink(controller:'organizacao', action:'organizacao')}">Avançar &rarr;</a>
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
                    			<li class="tooltip-social facebook-link"><a href="#facebook-profile" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook-square fa-3x"></i></a>
                    			</li>
                    			<li class="tooltip-social linkedin-link"><a href="#linkedin-profile" data-toggle="tooltip" data-placement="top" title="LinkedIn"><i class="fa fa-linkedin-square fa-3x"></i></a>
                   				</li>
                    			<li class="tooltip-social twitter-link"><a href="#twitter-profile" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter-square fa-3x"></i></a>
                    			</li>
                    			<li class="tooltip-social google-plus-link"><a href="#google-plus-profile" data-toggle="tooltip" data-placement="top" title="Google+"><i class="fa fa-google-plus-square fa-3x"></i></a>
                    			</li>
               				</ul>
                </div>
                
                 
                <!-- /well -->
                <div class="well">
                    <h4>Popular Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#dinosaurs">Dinosaurs</a>
                                </li>
                                <li><a href="#spaceships">Spaceships</a>
                                </li>
                                <li><a href="#fried-foods">Fried Foods</a>
                                </li>
                                <li><a href="#wild-animals">Wild Animals</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#alien-abductions">Alien Abductions</a>
                                </li>
                                <li><a href="#business-casual">Business Casual</a>
                                </li>
                                <li><a href="#robots">Robots</a>
                                </li>
                                <li><a href="#fireworks">Fireworks</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /well -->
                <div class="well">
                    <h4>Side Widget Well</h4>
                    <p>Bootstrap's default well's work great for side widgets! What is a widget anyways...?</p>
                </div>
                <!-- /well -->
            </div>
        </div>
     </div>
    
   </html>