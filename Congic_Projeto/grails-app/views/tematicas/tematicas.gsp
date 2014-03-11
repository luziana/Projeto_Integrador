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

       		<!-- Wrapper for slides -->
       		<div class="carousel-inner">
            	<div class="item active">
                	<div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide One');"></div>
                		<div class="carousel-caption">
                   			<h1>Modern Business - A Bootstrap 3 Template</h1>
                		</div>
            		</div>
            <div class="item">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Two');"></div>
                <div class="carousel-caption">
                    <h1>Ready to Style &amp; Add Content</h1>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Three');"></div>
                <div class="carousel-caption">
                    <h1>Additional Layout Options at <a href="http://startbootstrap.com">http://startbootstrap.com</a>
                    </h1>
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
                <h1 class="page-header">${it.tituloAreasTematicas} 
                    <small>${it.subtituloAreasTematicas}</small>
                </h1>
                <ol class="breadcrumb"></div>
                    <li><a href="${createLink(controller:'home', action:'home')}">Início</a>
                    </li>
                    <li class="active">Áreas Temáticas</li>
                </ol>
                </div>
                </g:each>
            </div>
            
            <!-- Lado direito Informações -->
            
            <div class="row">
            
             <!-- Areas Temáticas-->

            <div class="col-lg-8">

               <g:each in="${tematicas?}">
            		
                <div id="tematicas" class="col-lg-6 col-md-6 col-sm-6">
                	<p>${it.descricao}</p>
                    <h4><p>${it.area}</p></h4>
                    <ul>
<%--                        <li><p>${it.subArea}</p></li>--%>
                    </ul>
                </div>
               </g:each>
                
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
      
    
     <%--
		
    
    	<div id="tematicas">

			</br></br></br><center><h2>Áreas Temáticas</h2></center></br></br></br>
		
			<g:each in="${tematicas?}">

			<p>Descrição: ${it.descricao}</p>
			<p>Area: ${it.area}</p>
			<p>${it.subArea}</p>

			</g:each>
	
		</div>
		
		
		
		--%><!-- /.container -->
	
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