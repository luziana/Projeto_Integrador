<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
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
                <div class="col-lg-12">
                <h1 class="page-header">Temário, 
                    <small>“Inovação e Criatividade no Sertão do Alto Oeste Potiguar”</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="${createLink(controller:'home', action:'home')}">Início</a>
                    </li>
                </ol>
                </div>
            </div>
            
            <!-- Lado direito Informações -->
            
            <div class="row">
            
             <!-- Listagem de Notícias-->

            <div class="col-lg-8">

               <g:each in="${noticias?}">
					<div id="noticia" class="col-lg-4 col-md-4">		
						<h3><i class="fa fa-check-circle"></i>${it.titulo}</h3>
						<p>${it.descricao}<p>
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
    
     <!-- /.section-colored -->

    <div class="section-colored">

        <div class="container">

            <div class="row">
                <div class="col-lg-12 text-center">
                    <%--<h2>Display Some Work on the Home Page Portfolio</h2>--%>
                    <hr>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <a href="${createLink(controller:'apresentacao', action:'apresentacao')}"><h4><center>O Evento...</center></h4>
                    	<img class="img-responsive img-home-portfolio" src="http://www2.ifrn.edu.br/congic2013/wp-content/uploads/2013/04/slideshow_01-332x205.jpg"/>
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <a href="${createLink(controller:'localizacao', action:'index')}"><h4><center>Conhecendo Pau dos Ferros...</center></h4>
                        <img class="img-responsive img-home-portfolio" src="http://1.bp.blogspot.com/-xaBeblNxQOc/T66QzZIw1UI/AAAAAAAAeZg/AhlWCj5zTLg/s1600/_DSC1010.JPG"/>
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <a href="${createLink(controller:'hospedagem', action:'hospedagem')}"><h4><center>Hospedagens...</center></h4>
                        <img class="img-responsive img-home-portfolio" src="http://1.bp.blogspot.com/-U28bybjg4fM/UvPeMg6QvlI/AAAAAAAABzY/SS_FDw99Xqo/s1600/hotel.jpg">
                    </a>
                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>

    
	    <!-- /.container -->
	
	<div class="container">

        <hr>

        <footer>
            <div class="row">
                <div class="col-lg-12">
                
                <p>Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Norte</p>              
                	<p>Campus Pau dos Ferros</p>
                    <p>Copyright &copy; Company 2014</p>
                </div>
            </div>
        </footer>

    </div>
    
        <!-- /.container -->

	</body>
</html>