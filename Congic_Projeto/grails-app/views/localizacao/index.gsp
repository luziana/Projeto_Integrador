<%@ page import="congic_projeto.Localizacao" %>

<!DOCTYPE html>
<html>
	<head>
    	<meta name="layout" content="main"/>
    	
        <title>Congresso de Iniciação Científica do IFRN > Localização</title>  
                
         <resource:include components="map" key="AIzaSyBS0q7wbuQAkt36ZfITUGAvULWEkgQhFi0"/>    
         
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
                <h1 class="page-header">${it.tituloLocalizacao} 
                    <small>${it.subtituloLocalizacao}</small>
                 </h1>
                </div>
                </g:each>
                <div class="col-lg-12">
                 <ol class="breadcrumb">
                    <li><a href="${createLink(controller:'home', action:'home')}">Início</a>
                    </li>
                    <li class="active">Localização</li>
                </ol>
                </div>
            </div>
            
            <!-- Lado direito Informações -->
            
          	 <div class="col-lg-8">
               <g:each in="${localizacao?}">
					<div id="localizacao" >		
						<p>${it.descricao}</p>	
					</div>
				</g:each>
           </div>
           
               	
               	<!-- Mapa Localização -->
               	<br/><br/>
               	<div class="col-lg-8">
               	
               	<center>
					<div id="map">
						<richui:map type="GoogleMaps" lat="40.689299" lng="-74.044" route="true" />
					</div>
				</center>
				
			
				<!-- Ir para outras páginas -->
                
                <ul class="pager">
                    <li class="previous"><a href="${createLink(controller:'organizacao', action:'organizacao')}">&larr;Voltar</a>
                    </li>
                    <li class="next"><a href="${createLink(controller:'hospedagem', action:'hospedagem')}">Avançar &rarr;</a>
                    </li>
                </ul>

            </div>
            
            
            <!-- Lado esquerdo -->

            <div class="col-lg-4">
                <div class="well">
                    <h4>Blog Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
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
     
     <!-- /.container -->
	
	<div class="container">

        <hr>

        <footer>
            <div class="row">
                <div class="col-lg-12">
                 	<p>Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Norte</p>
                	<p>IFRN, Campus Pau dos Ferros</p>
                    <p>Copyright &copy; Company 2014</p>
                </div>
            </div>
        </footer>

    </div>
    
        <!-- /.container -->
                
     </body>
</html>
    